<script>
    import Default from '../layouts/Default.vue'
    import axios from 'axios'
    import store from '../store'


    export default {
        components:{
            Default,
        },
        data() {
            return {
                teacherId: null,
                teacher: null,
                loading: false,
                reviews: [],
                store,

                ui_name: '',
                ui_email: '',
                ui_phone: '',
                title: '',
                text: '',
                success: false,
                errors: null,

                review: '',
                userReview: '',

                selectedVote: 0
            }
        },
        props: ['id'],
        methods: {
            fetchTeacher(id) {

                this.loading = true

                axios.get(`http://127.0.0.1:8000/api/teachers/${ id }`)
                .then( response => {
                    // console.log(response)
                    const { success, teacher} = response.data
                    if(success) {
                        this.teacher = teacher
                        this.teacherId = teacher.id
                        console.log(this.teacherId)
                        this.reviews = teacher.review

                        this.store.reviewsTeacherLength = this.reviews.length
                        
                    } else {
                        console.log(teacher)
                    }
                })
                .catch(error => {
                    // console.log(error)
                })
                .finally(() => {
                    this.loading = false
                })
            },
            textAreaValidate() {
                let textLenghtValid = this.text.length <= 1000;
                return textLenghtValid;
            },
            formValidate() {
                let nameValid = this.ui_name.trim() !== "" && this.ui_name.trim().length <= 50;
                let emailValid = this.ui_email.trim() !== "" && this.ui_email.trim().length <= 100;
                let phoneValid = this.ui_phone.trim() !== "" && this.ui_phone.trim().length <= 50;
                let titleValid = this.title.trim() !== "" && this.title.trim().length <= 100;
                let textValid = this.text.trim() !== "" && this.text.trim().length <= 3000;
                let textLenghtValid = this.text.trim().length <= 1000;

                return nameValid && emailValid && textValid && textLenghtValid && phoneValid && titleValid;
            },
            formReviewValidate() {
                let userReviewValid = this.userReview.trim() !== "" && this.userReview.trim().length <= 50;
                let reviewValid = this.review.trim() !== "" && this.review.trim().length <= 3000;
                let textLenghtValid = this.review.trim().length <= 1000;

                return userReviewValid && reviewValid && textLenghtValid;
            },

            sendForm() {
                const data = {
                    teacher_id: this.teacherId,
                    ui_name: this.ui_name,
                    ui_email: this.ui_email,
                    ui_phone: this.ui_phone,
                    title: this.title,
                    text: this.text,
                };

                if(!this.formValidate()) {
                    alert('Compila il form')
                    return 
                }

                this.loading = true;

                console.log(data)

                axios.post('http://127.0.0.1:8000/api/messages',data)
                    .then(res => {
                        console.log(res)
                        const { success, errors } = res.data;

                        this.success = success;

                        if (success) {
                            this.ui_name = '';
                            this.ui_email = '';
                            this.ui_phone = '';
                            this.title = '';
                            this.text = '';
                            this.errors = null;
                        } else {
                            this.errors = errors;
                            console.log(errors)
                        }
                    })
                    .catch(err => {
                        console.log(err)
                    })
                    .finally(() => {
                        this.loading = false;
                    });
            },
            sendReviewForm() {
                const data = {
                    teacher_id: this.teacherId,
                    review: this.review,
                    userReview: this.userReview
                }

                if(!this.formReviewValidate()) {
                    alert('Compila il form')
                    return 
                }

                this.loading = true;

                axios.post('http://127.0.0.1:8000/api/reviews',data)
                    .then(res => {
                        // console.log(res)
                        const { success, errors } = res.data;

                        this.success = success;

                        if (success) {
                            this.review = '',
                            this.userReview = '',
                            this.errors = null;
                        } else {
                            this.errors = errors;
                            console.log(errors)
                        }
                    })
                    .catch(err => {
                        console.log(err)
                    })
                    .finally(() => {
                        this.loading = false;
                    });
            },
            sendVoteForm() {
                const data = {
                    teacher_id: this.teacherId,
                    vote_id: parseInt(this.selectedVote),

                }
                console.log(data)
                console.log(this.teacherId, this.selectedVote)

                this.loading = true;

                axios.post('http://127.0.0.1:8000/api/teacher-votes',(data))
                    .then(res => {
                    // console.log(res)
                    const { success, errors } = res.data;

                    this.success = success;

                    if (success) {
                        this.selectedVote = 0
                        this.errors = null;
                    } else {
                        this.errors = errors;
                        console.log(errors)
                    }
                })
                .catch(err => {
                    if (err.response) {
                        console.log(err.response.data); // Contenuto della risposta di errore dal server
                        console.log(err.response.status); // Codice di stato HTTP della risposta
                        console.log(err.response.headers); // Intestazioni HTTP della risposta
                    } else if (err.request) {
                        console.log(err.request); // Informazioni sulla richiesta che non ha ricevuto una risposta
                    } else {
                        console.log('Error', err.message); // Messaggio di errore generale
                    }
                    console.log(err.config); // Configurazione della richiesta Axios
                    })
                .finally(() => {
                    this.loading = false;
                })
            }

        },
        computed: {
            lengthReviews() {
                return this.store.reviewsTeacherLength = this.reviews.length
            }
        },
        created() {
            this.fetchTeacher(this.id)
        }
    }
</script>

<template>
    <Default>
            <div class="container">
                <div class="row justify-content-center align-items-center gap-4">
                    <div class="col col-3 d-flex flex-column align-items-center">
                        <img v-if="teacher.id <= 16" :src="teacher.picture" class="image_teacher" :alt="teacher.user.name">
                        <img v-else :src="teacher.picture_path" :alt="teacher.user.name" class="image_teacher">

                        <div class="info_teacher mt-2">
                            <h3>
                                Informazioni
                            </h3>
                            <p>
                                Email: {{ teacher.user.email }}; <br>
                                Telefono: {{ teacher.phone }}; <br>
                                indirizzo: {{ teacher.user.address }}.
                            </p>
                            <div class="btn-group">
                                <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
                                    Curriculum Vitae
                                </button>
                                <ul class="dropdown-menu dropdown-menu-lg-end">
                                    <img :src="teacher.cv" :alt="teacher.user.name">
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col col-8">
                        <div class="teacher_name">
                            <h1>
                                {{ teacher.user.name }}
                            </h1>
                            <span class="badge">{{teacher.user.address}}</span>

                        </div>

                        <div class="description mt-3">

                            <div class="performace_teacher">
                                <h3 class="fw-bold">
                                    Performace
                                </h3>
                                <p v-if="teacher.performace">

                                    <div v-html="teacher.performance"></div>

                                </p>
                                <p v-else class="text-center gray_color_text fs-6">
                                    <span class="fw-bold"> {{ teacher.user.name }} </span> non ha postato ancora le sue performace.
                                </p>
                            </div>

                            <div class="specializations_teacher">
                                <h3 class="fw-bold">
                                    Specializzazioni
                                </h3>
                                <ul>
                                    <li v-for="specialization in teacher.specializations" class="text-justify">
                                        <p class="fw-bold gray_color_text mt-3">
                                            <h4>
                                                {{ specialization.name }}
                                            </h4>
                                            <span class="badge">{{specialization.expertise}}</span>
                                        </p>
                                        {{ specialization.description }}
                                    </li>
                                </ul>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="reviews_teacher col-12">
                        <div class="accordion" id="accordionExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <h3 class="fw-bold">
                                            Recensioni
                                        </h3>
                                    </button>
                                </h2>
                                <ul id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                    <li class="accordion-body" v-for="review in teacher.review">
                                        <h5 class="fw-bold">
                                            {{ review.userReview }}
                                        </h5>
                                        {{ review.review }}                                    
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <h5 class="mt-3">
                            {{ teacher.user.name }} desidera una tua recensione.
                        </h5>

                        <form @submit.prevent="sendReviewForm" class="d-flex flex-column gap-1">
                            <input type="hidden" name="teacher_id" v-model="teacherId">

                            <input type="text" placeholder="Il tuo nome" name="user" v-model="userReview" class="input_style">
                            <small v-if="errors && errors.userReview" class="text-danger">
                                <span v-for="error in errors.userReview" :key="error">{{ error }}</span>
                            </small>

                            <textarea name="review" id="review" cols="60" rows="5" placeholder="Scrivi la tua recensione" class="input_style" v-model="review"></textarea>
                            <small v-if="errors && errors.review" class="text-danger">
                                <span v-for="error in errors.review" :key="error">{{ error }}</span>
                            </small>

                            <button v-if="loading === false" type="submit" class="input_style" :class=" !formReviewValidate() ? 'opacity-25' : ''">
                                Invia
                            </button>
                            <div class="animate-pulse" v-else>sending...</div>
                        </form>

                        <h5 class="mt-3">
                            {{ teacher.user.name }} desidera una tua valutazione.
                        </h5>

                        <form @submit.prevent="sendVoteForm" class="d-flex mt-3">
                            <input type="hidden" name="teacher_id" v-model="teacherId">

                            <select name="vote_id" id="vote" v-model="selectedVote" :class="errors && errors.vote ? 'text-danger' : 'input_style'">
                                <option value="">Inserisci una valutazione da 1 a 5 al docente</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <button type="submit" class="input_style" :class=" selectedVote == 0 ? 'opacity-25' : ''">
                                Invia
                            </button>

                        </form>

                    </div>
                    <div class="col-12 mt-5">
                        <h3>
                            Per prenotare, o annullare una prenotazione già effettuata, compila il seguente form:
                        </h3>
                        <div v-if="success" >
                            Messaggio inviato con successo!
                        </div>
                        <form @submit.prevent="sendForm" class="d-flex flex-column gap-1">

                            <div class="d-flex flex-column">
                                <input type="hidden" name="teacher_id" v-model="teacherId">

                                <input type="text" name="ui_name" placeholder="Il tuo nome" :class="errors && errors.ui_name ? 'text-danger' : 'input_style'" v-model="ui_name">
                                <span>caratteri rimasti: {{ 100 - ui_name.length }}</span>
                                <small v-if="errors && errors.ui_name" class="text-danger">
                                    <span v-for="error in errors.ui_name" :key="error">{{ error }}</span>
                                </small>

                                <input type="email" name="ui_email" placeholder="La tua email" :class="errors && errors.ui_email ? 'text-danger' : 'input_style'" v-model="ui_email">
                                <span>caratteri rimasti: {{ 100 - ui_email.length }}</span>
                                <small v-if="errors && errors.ui_email" class="text-danger">
                                    <span v-for="error in errors.ui_email" :key="error">{{ error }}</span>
                                </small>

                                <input type="text" name="ui_phone" placeholder="Il tuo telefono" :class="errors && errors.ui_phone ? 'text-danger' : 'input_style'" v-model="ui_phone">
                                <span>caratteri rimasti: {{ 100 - ui_phone.length }}</span>

                                <select name="title" id="title" v-model="title" :class="errors && errors.title ? 'text-danger' : 'input_style'">
                                    <option value=""> La tua richiesta </option>
                                    <option value="prenotazione">Richiesta di prenotazione</option>
                                    <option value="annullamento">Richiesta di annullamento</option>
                                    <option value="informazioni">Richiesta di informazioni</option>
                                </select>
                                <small v-if="errors && errors.title" class="text-danger">
                                    <span v-for="error in errors.title" :key="error">{{ error }}</span>
                                </small>

                                <textarea name="text" id="text" cols="30" rows="10" v-model="text" :class="errors && errors.text ? 'text-danger' : 'input_style'">
                                    Scrivi il tuo messaggio
                                </textarea>
                                <small v-if="errors && errors.text" class="text-danger">
                                    <span v-for="error in errors.text" :key="error">{{ error }}</span>
                                </small>
                            </div>
                            <button v-if="loading === false" type="submit" class="input_style" :class=" !formValidate() ? 'opacity-25' : ''">
                                Invia il messaggio
                            </button>
                            <div class="animate-pulse" v-else>sending...</div>
                        </form>
                    </div>
                </div>
            </div>
    </Default>
</template>

<style lang="scss" scoped>
@use '../style/partials/variables.scss' as *;
.container{

    .text-justify{
        text-align: justify;
    }
    .gray_color_text{
        color: $light-gray;
    }

    li{
        list-style: circle;
    }

    // .accordion{
    //     z-index: 0;
    // }

    .accordion-button:not(.collapsed){
        background-color: $white !important;
        color: currentColor !important;
    }

    .row{
        padding: 20px;
        width: 100%;

        .col{

            .badge{
                height: min-content;
                background-color: $light_green;
                color: $white_gold;
            }

            .teacher_name{
                border-bottom: 4px solid $white_gold;
                display: flex;
                align-items: center;
                gap: 10px;
            }
        }

        .col-3{
            padding: 0;

            .image_teacher{
                border-radius: 20px;
            }

            .btn-group{
                width: 100%;
                background-color: $light_gray !important;

                .btn{
                    --bs-btn-color: none !important;
                }

            }
        }

        .col-12{
            .input_style{
                margin: 15px;
                padding: 5px;
                border: 1px solid $light_green;
                border-radius: 20px;
            }

            button.input_style{
                width: max-content;
                padding: 10px;
            }
        }
    }

}


</style>