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
const formu = document.getElementById('loUsu');
const imputs = document.querySelectorAll('#loUsu input');

//Objetos con expresion regulares para validaciòn
const vali = {
    correo: /[a-z0-9!#$%&’*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&’*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/,
    contrasena: /^[A-Za-z0-9]{4,20}$/


};

const campos = {
    cor: false,
    con: false

};

const usu = (e) => {
    switch (e.target.name) {
        case "textLogin":
            if (vali.correo.test(e.target.value)) {
                document.getElementById('error1').classList.remove('error');
                document.getElementById('cor').classList.add('correct');
                document.getElementById('cor').classList.remove('incorrect');
                campos['cor'] = true;
            } else {
                const error = document.getElementById('error1');
                error.classList.add('error');
                document.getElementById('cor').classList.add('incorrect');
                document.getElementById('cor').classList.remove('correct');
                campos['cor'] = false;
            }
            break;
        case "textPassword":
            if (vali.contrasena.test(e.target.value)) {
                document.getElementById('error2').classList.remove('error');
                document.getElementById('con').classList.add('correct');
                document.getElementById('con').classList.remove('incorrect');
                campos['con'] = true;
            } else {
                const error = document.getElementById('error2');
                error.classList.add('error');
                document.getElementById('con').classList.add('incorrect');
                document.getElementById('con').classList.remove('correct');
                campos['con'] = false;
            }
            break;
    }
}

imputs.forEach((campo) => {
    campo.addEventListener('keyup', usu);
    campo.addEventListener('blur', usu);
    console.log('click');
    if (campos.con && campos.cor) {

        document.getElementById('exito').classList.add('succes');
        document.getElementById('uError').classList.remove('Perror');
        formu.sumbit();
    } else {
        document.getElementById('uError').classList.add('Perror');
        document.getElementById('exito').classList.remove('succes');
    }
});
