console.log("Ciao Cianuro... Oggi l'esercizio è OUR TEAM");
//********************
// RECUPERO ELEMENTI DAL DOM
//******************** */
let membersTableElement = document.getElementById("membri-del-team");

//********************
// CREO L'OGGETTO MEMBRO TEAM
//******************** */
let membroTeam = {
  nome: "Wayne Barnett",
  ruolo: "Founder & CEO",
  foto: "../img/wayne-barnett-founder-ceo.jpg",
};
console.log(membroTeam);
//********************
// CREO L'ARRAY CON TUTTI I MEMBRI DEL TEAM
//******************** * /
let membriTeam = [
  membroTeam,
  {
    nome: "Angela Carroll",
    ruolo: "Chief Editor",
    foto: "../img/angela-caroll-chief-editor.jpg",
  },
  {
    nome: "Walter Gordon",
    ruolo: "Office Manager",
    foto: "../img/walter-gordon-office-manager.jpg",
  },
  {
    nome: "Angela Lopez",
    ruolo: "Social Media Manager",
    foto: "../img/angela-lopez-social-media-manager.jpg",
  },
  {
    nome: "Scott Estrada",
    ruolo: "Developer",
    foto: "../img/scott-estrada-developer.jpg",
  },
  {
    nome: "Barbara Ramos",
    ruolo: "Graphic Designer",
    foto: "../img/barbara-ramos-graphic-designer.jpg",
  },
];
console.log(membriTeam);

//********************
// STAMPO IN CONSOLE LE INFORMAZIONI DI OGNI MEMBRO DEL TEAM
//******************** */
for (let key in membriTeam) {
  console.log(membriTeam[key]);
  // CHIUSURA CICLO FOR
}
//********************
// CICLO I MEMBRI DEL TEAM
//******************** */
for (let i = 0; i < membriTeam.length; i++) {
  let membri = membriTeam[i];
  let fullName = membri.nome;
  let rule = membri.ruolo;
  let foto = membri.foto;
  //********************
  // PREPARO STRUTTURA DATI DA STAMPARE SUL DOM
  //******************** */
  const membro = `
  <tr>
  <td>${fullName}</td>
  <td>${rule}</td>
  <td>
     <img src="${foto}" alt="foto membro team" class"member-img">
  </td>
  </tr>
  `;
  // STAMPO SUL DOM
  membersTableElement.innerHTML += membro;
  // CHIUSURA CICLO FOR
}
