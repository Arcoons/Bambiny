/**!
 * MixItUp v3.3.1
 * A high-performance, dependency-free library for animated filtering, sorting and more
 * Build 94e0fbf6-cd0b-4987-b3c0-14b59b67b8a0
 *
 * @copyright Copyright 2014-2018 KunkaLabs Limited.
 * @author    KunkaLabs Limited.
 * @link      https://www.kunkalabs.com/mixitup/
 *
 * @license   Commercial use requires a commercial license.
 *            https://www.kunkalabs.com/mixitup/licenses/
 *
 *            Non-commercial use permitted under same terms as CC BY-NC 3.0 license.
 *            http://creativecommons.org/licenses/by-nc/3.0/
 */
const formu = document.getElementById('regiAcu');
const imputs = document.querySelectorAll('#regiAcu input');

//Objetos con expresion regulares para validaciòn
const vali = {

numeros: /^[0-9]{5,10}$/ ,
nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/ ,
correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/
};

const campos = {
 nom: false,
 apel: false,
 na:false,
 nom2: false,
 apel2: false,
 cedu:false,
 cel:false,
 dire:false
};

const valiInput=(vali,input,grupo)=>{
 if (vali.test(input.value)){
    //Si expresion regular se cumple
    //Remover clase error
    document.getElementById(`f_${grupo}`).classList.remove('error');
    //agregar clase success
    document.getElementById(`f_${grupo}`).classList.add('success');
    document.querySelector(`#f_${grupo} .msg_error`).classList.remove('msg_error_visible');
    document.querySelector(`#f_${grupo} i`).classList.add('fa-check-circle');
    document.querySelector(`#f_${grupo} i`).classList.remove('fa-times-circle');
    campos[grupo] = true;
 } else {    
    document.getElementById(`f_${grupo}`).classList.add('error'); 
    document.querySelector(`#f_${grupo} .msg_error`).classList.add('msg_error_visible');
    document.querySelector(`#f_${grupo} i`).classList.remove('fa-check-circle');
    document.querySelector(`#f_${grupo} i`).classList.add('fa-times-circle');
    campos[grupo] = false;
 }
};

const validarcampos=(e)=>{
    /*console.log(e.target.name);*/ //compruebe para traer el name del input
    switch (e.target.name) {
        case "nom":
            validarInput(vali.numeros,e.target,e.target.name);
        break;
        case "apel":
            validarInput(vali.nombre,e.target,e.target.name);
        break;
        case "na":
            validarInput(vali.numeros,e.target,e.target.name);
        break
        case "nom2":
            validarInput(vali.numeros,e.target,e.target.name);
        break
        case "apel2":
            validarInput(vali.nombre,e.target,e.target.name);
        break
        case "cedu":
            validarInput(vali.correo,e.target,e.target.name);
        break 
        case "cel":
            validarInput(vali.numeros,e.target,e.target.name);
        break
        case "dire":
            validarInput(vali.numeros,e.target,e.target.name);
        break
    }
};


imputs.forEach((campo)=>{
    campo.addEventListener('keyup', validarcampos);
    campo.addEventListener('blur', validarcampos);
});