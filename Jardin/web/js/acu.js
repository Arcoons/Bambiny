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
    nombre: /^[A-Za-z\s]{3,40}$/,
    apellido: /^[A-Za-z\s]{3,40}$/,
    numeros: /^[0-9]{3,11}$/


};

const campos = {
    nom: false,
    apel: false,
    na: false,
    nom2: false,
    apel2: false,
    cedu: false,
    cel: false,

};

const acudi = (e) => {
    switch (e.target.name) {
        case "nom":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error1').classList.remove('error');
                document.getElementById('nom').classList.add('correct');
                document.getElementById('nom').classList.remove('incorrect');
                campos['nom'] = true;
            } else {
                document.getElementById('error1').classList.add('error');
                document.getElementById('nom').classList.add('incorrect');
                document.getElementById('nom').classList.remove('correct');
                campos['nom'] = false;
            }
            break;
        case "apel":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error2').classList.remove('error');
                document.getElementById('apel').classList.add('correct');
                document.getElementById('apel').classList.remove('incorrect');
                campos['apel'] = true;
            } else {
                document.getElementById('error2').classList.add('error');
                document.getElementById('apel').classList.add('incorrect');
                document.getElementById('apel').classList.remove('correct');
                campos['apel'] = false;
            }
            break;
        case "na":

            let fechaA = new Date();
            const ano = parseInt(fechaA.getFullYear());

            const fechaN = document.getElementById('na').value;
            const anoNaci = parseInt(String(fechaN).substring(0, 4));
            let edad = ano - anoNaci;
            parseInt(edad);

            console.log(edad);
            if (ano > 1930 && edad > 17 && edad < 100) {
                document.getElementById('error3').classList.remove('error');
                document.getElementById('error3').classList.add('correct');
                document.getElementById('error3').classList.remove('incorrect');
                campos['na'] = true;
            } else {
                document.getElementById('error3').classList.add('error');
                document.getElementById('error3').classList.remove('correct');
                document.getElementById('error3').classList.add('incorrect');
                campos['na'] = false;
            }
            break;
        case "nom2":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error4').classList.remove('error');
                document.getElementById('nom2').classList.add('correct');
                document.getElementById('nom2').classList.remove('incorrect');
                campos['nom2'] = true;
            } else {
                document.getElementById('error4').classList.add('error');
                document.getElementById('nom2').classList.add('incorrect');
                document.getElementById('nom2').classList.remove('correct');
                campos['nom2'] = false;
            }
            break;
        case "apel2":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error5').classList.remove('error');
                document.getElementById('apel2').classList.add('correct');
                document.getElementById('apel2').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                document.getElementById('error5').classList.add('error');
                document.getElementById('apel2').classList.add('incorrect');
                document.getElementById('apel2').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
        case "cedu":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error6').classList.remove('error');
                document.getElementById('cedu').classList.add('correct');
                document.getElementById('cedu').classList.remove('incorrect');
                campos['cedu'] = true;
            } else {
                document.getElementById('error6').classList.add('error');
                document.getElementById('cedu').classList.add('incorrect');
                document.getElementById('cedu').classList.remove('correct');
                campos['cedu'] = false;
            }
            break;
    
        case "cel":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error7').classList.remove('error');
                document.getElementById('cel').classList.add('correct');
                document.getElementById('cel').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                document.getElementById('error7').classList.add('error');
                document.getElementById('cel').classList.add('incorrect');
                document.getElementById('cel').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            }
        }
            imputs.forEach((campo) => {
                campo.addEventListener('keyup', acudi);
                campo.addEventListener('blur', acudi);
        });