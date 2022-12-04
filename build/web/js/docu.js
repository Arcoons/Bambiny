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
function fileValidation(){
    const fileInput = document.getElementById('tipo');
    const filePath = fileInput.value;
    const allowedExtensions = /(.pdf)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Por favor suba un archivo tipo: .pdf ');
        fileInput.value = '';
        return false;
    }else{
        //Image preview
        if (fileInput.files && fileInput.files[0]) {
            const    reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('imagePreview').innerHTML = '<iframe src="'+e.target.result+'"/>';
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}