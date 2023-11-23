<script>
    export default {
        props: {
            teacher: {
                type: Object,
                required: true,
            },
            specializations: {
                type: Object,
                required: true,
            }
        },
        computed: {
            averageVotes() {
                if (this.teacher.votes.length === 0) {
                    return 0; 
                }

                const totalVotes = this.teacher.votes.reduce((sum, vote) => sum + vote.vote, 0);
                // console.log(Math.round(totalVotes / this.teacher.votes.length))
                return Math.round(totalVotes / this.teacher.votes.length);
            },
        },
    }
</script>

<template>

    <div class="col">
        <div class="card">
            <img v-if="teacher.id <= 16" :src="teacher.picture" class="card-img-top card_image" :alt="teacher.user.name">
            <img v-else :src="teacher.picture_path" :alt="teacher.user.name" class="card-img-top card_image">
            <div class="card-body">
                <h5 class="card-title">{{ teacher.user.name }}</h5>
                <p>
                    <span class="fw-bold">
                        Email:
                    </span>
                    {{ teacher.user.email}}
                </p>
                <p>
                    <span class="fw-bold">
                        Telefono:
                    </span>
                    {{ teacher.phone}}
                </p>
                <p>
                    <span class="fw-bold">
                        Indirizzo:
                    </span>
                    {{ teacher.user.address}}
                </p>
                <p class="text_spec">
                    <span class="fw-bold">
                        Specializzazioni:
                    </span>
                    <ul>
                        <li v-for="specialization in specializations" class="spec_list">
                            {{ specialization.name }}
                        </li>
                    </ul>
                </p>
                <p v-if="teacher.performance != null">
                        <span class="fw-bold">
                        Prestazioni:
                    </span>
                    <span v-html="teacher.performance"></span>
                </p>
                <p class="star_votes text-center">
                    <span>
                        <template v-for="n in 5">
                            <i v-if="n <= averageVotes" class="fa-solid fa-star"></i>
                            <i v-else class="fa-regular fa-star"></i>
                        </template>
                    </span>
                </p>
            </div>
            <router-link :to="{name: 'teachers.show', params: { id: teacher.id } }" class="router">
                <button type="button" class="btn card-button">Visualizza</button>
            </router-link>
    </div> 
</div>
    

</template>

<style lang="scss" scoped>
@use '../style/partials/variables.scss' as *;
.router{
    position: relative;
}

.card{
    margin-bottom: 30px;
    padding: 0 !important;
    box-shadow: 7px 7px 3px #9f9e9e;
    
    .card-body{
        display: flex;
        flex-direction: column;
        gap: 10px;

        .text_spec{
            height: 50%;
        }

        .spec_list{
            list-style: circle;
        }

        .star_votes{
            position: relative;
            bottom: 20px;

            .fa-star{
                color: $light_green;
            }
        }

    }

    .card-button{
        position: relative;
        left: 50%;
        bottom: 30%;
        transform: translate(-50%);
        background-color: $light_green;
        color: $white_gold;
    }
}



</style>