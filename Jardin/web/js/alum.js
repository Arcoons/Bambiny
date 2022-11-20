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
const formu = document.getElementById('regiAlum');
const imputs = document.querySelectorAll('#regiAlum input');

//Objetos con expresion regulares para validaciòn
const vali = {
    nombre: /^[A-Za-z\s]{2,40}$/,
    numeros: /^[0-9]{3,11}$/


};

const campos = {
    nom: false,
    apel: false,
    na: false,
    nom2: false,
    apel2: false,
    regi: false,
    her: false,
    san:false,
    tel:false,
    cel: false,
    aler: false,
    medi: false,
    peso: false,
    altu:false,
    enfe:false,
    des:false

};

const acudi = (e) => {
    switch (e.target.name) {
        case "textnom1_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error1').classList.remove('error');
                document.getElementById('nom').classList.add('correct');
                document.getElementById('nom').classList.remove('incorrect');
                campos['nom'] = true;
            } else {
                const error=document.getElementById('error1');
                error.classList.add('error');
                document.getElementById('nom').classList.add('incorrect');
                document.getElementById('nom').classList.remove('correct');
                campos['nom'] = false;
            }
            break;
        case "textapel1_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error2').classList.remove('error');
                document.getElementById('apel').classList.add('correct');
                document.getElementById('apel').classList.remove('incorrect');
                campos['apel'] = true;
            } else {
                const error=document.getElementById('error2');
                error.classList.add('error');
                document.getElementById('apel').classList.add('incorrect');
                document.getElementById('apel').classList.remove('correct');
                campos['apel'] = false;
            }
            break;
        case "textfechnaci_alum":

            let fechaA = new Date();
            const ano = parseInt(fechaA.getFullYear());

            const fechaN = document.getElementById('na').value;
            const anoNaci = parseInt(String(fechaN).substring(0, 4));
            let edad = ano - anoNaci;
            parseInt(edad);

            console.log(edad);
            if (ano > 1930 && edad > 1 && edad < 100) {
                document.getElementById('error3').classList.remove('error');
                document.getElementById('error3').classList.add('correct');
                document.getElementById('error3').classList.remove('incorrect');
                campos['na'] = true;
            } else {
                const error=document.getElementById('error3');
                error.classList.add('error');
                document.getElementById('error3').classList.remove('correct');
                document.getElementById('error3').classList.add('incorrect');
                campos['na'] = false;
            }
            break;
        case "textnom2_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error4').classList.remove('error');
                document.getElementById('nom2').classList.add('correct');
                document.getElementById('nom2').classList.remove('incorrect');
                campos['nom2'] = true;
            } else {
                const error=document.getElementById('error4');
                error.classList.add('error');
                document.getElementById('nom2').classList.add('incorrect');
                document.getElementById('nom2').classList.remove('correct');
                campos['nom2'] = false;
            }
            break;
        case "textapel2_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error5').classList.remove('error');
                document.getElementById('apel2').classList.add('correct');
                document.getElementById('apel2').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                const error=document.getElementById('error5');
                error.classList.add('error');
                document.getElementById('apel2').classList.add('incorrect');
                document.getElementById('apel2').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
        case "textnuip_alumn":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error6').classList.remove('error');
                document.getElementById('regi').classList.add('correct');
                document.getElementById('regi').classList.remove('incorrect');
                campos['cedu'] = true;
            } else {
                const error=document.getElementById('error6');
                error.classList.add('error');
                document.getElementById('regi').classList.add('incorrect');
                document.getElementById('regi').classList.remove('correct');
                campos['cedu'] = false;
            }
            break;
    
        case "textnumherma_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error7').classList.remove('error');
                document.getElementById('her').classList.add('correct');
                document.getElementById('her').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error7');
                error.classList.add('error');
                document.getElementById('her').classList.add('incorrect');
                document.getElementById('her').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "textgrupsangui_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error8').classList.remove('error');
                document.getElementById('san').classList.add('correct');
                document.getElementById('san').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error8');
                error.classList.add('error');
                document.getElementById('san').classList.add('incorrect');
                document.getElementById('san').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "texttelefijo_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error9').classList.remove('error');
                document.getElementById('tel').classList.add('correct');
                document.getElementById('tel').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error9');
                error.classList.add('error');
                document.getElementById('tel').classList.add('incorrect');
                document.getElementById('tel').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "texttelecelu_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error10').classList.remove('error');
                document.getElementById('cel').classList.add('correct');
                document.getElementById('cel').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error10');
                error.classList.add('error');
                document.getElementById('cel').classList.add('incorrect');
                document.getElementById('cel').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "textalerg_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error11').classList.remove('error');
                document.getElementById('aler').classList.add('correct');
                document.getElementById('aler').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                const error=document.getElementById('error11');
                error.classList.add('error');
                document.getElementById('aler').classList.add('incorrect');
                document.getElementById('aler').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
            case "textmedica_alumd":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error12').classList.remove('error');
                document.getElementById('medi').classList.add('correct');
                document.getElementById('medi').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                const error=document.getElementById('error12');
                error.classList.add('error');
                document.getElementById('medi').classList.add('incorrect');
                document.getElementById('medi').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
            case "textpeso_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error13').classList.remove('error');
                document.getElementById('peso').classList.add('correct');
                document.getElementById('peso').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error13');
                error.classList.add('error');
                document.getElementById('peso').classList.add('incorrect');
                document.getElementById('peso').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "textaltura_alum":
            if (vali.numeros.test(e.target.value)) {
                document.getElementById('error14').classList.remove('error');
                document.getElementById('altu').classList.add('correct');
                document.getElementById('altu').classList.remove('incorrect');
                campos['cel'] = true;
            } else {
                const error=document.getElementById('error14');
                error.classList.add('error');
                document.getElementById('altu').classList.add('incorrect');
                document.getElementById('altu').classList.remove('correct');
                campos['cel'] = false;
            }
            break;
            case "textenferm_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error15').classList.remove('error');
                document.getElementById('enfe').classList.add('correct');
                document.getElementById('enfe').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                const error=document.getElementById('error15');
                error.classList.add('error');
                document.getElementById('enfe').classList.add('incorrect');
                document.getElementById('enfe').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
            case "textdescenferm_alum":
            if (vali.nombre.test(e.target.value)) {
                document.getElementById('error16').classList.remove('error');
                document.getElementById('des').classList.add('correct');
                document.getElementById('des').classList.remove('incorrect');
                campos['apel2'] = true;
            } else {
                const error=document.getElementById('error16');
                error.classList.add('error');
                document.getElementById('des').classList.add('incorrect');
                document.getElementById('des').classList.remove('correct');
                campos['apel2'] = false;
            }
            break;
            }
        };
            imputs.forEach((campo) => {
                campo.addEventListener('keyup', acudi);
                campo.addEventListener('blur', acudi);
                
                console.log('click');
        });
        formu.addEventListener('.sumbit',(e)=>{

        e.preventDefault();
       
        if(campos.nom && campos.apel && campos.na && campos.nom2 && campos.apel2 
                && campos.regi && campos.her && campos.san && campos.tel 
                && campos.cel && campos.aler && campos.medi && campos.peso 
                && campos.altu && campos.enfe && campos.des){
            
            document.getElementById('exito').classList.add('succes');
            document.getElementById('uError').classList.remove('Perror');
            formu.sumbit();
        }else{
            document.getElementById('uError').classList.add('Perror');
            document.getElementById('exito').classList.remove('succes');
        }
    });
        