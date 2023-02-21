function getLGAs() {
    const next_drop_down = document.getElementById('lgas_list');
    const current_drop_down = document.getElementById('states_list')

    let selected_state = current_drop_down.value;
    let url = '/state/' + selected_state;

    // hideForm()
    next_drop_down.innerHTML = ''

    document.getElementById('wards_list').innerHTML = '';
    document.getElementById('pol_unit_list').innerHTML = '';

    do_fetch(url, next_drop_down, 'lga_name');
}

function do_fetch(url, drop_down, pat) {

    const res_form = document.getElementById('form_params')
    res_form.style.display = 'none'

    console.log(url)
    fetch(url)
        .then((response) => response.json())
        .then((data) => {
            console.log(data);
            let list = data.data
            render_list(drop_down, list, pat)
        });

}

function render_list(drop_down, data, pat, uniqueid = 'uniqueid') {
    for (let key in data) {
        let option = document.createElement("option");
        option.setAttribute('value', data[key][uniqueid]);
        let optionText = document.createTextNode(data[key][pat]);
        option.appendChild(optionText);

        drop_down.appendChild(option);
    }
}

function getWards() {
    const next_drop_down = document.getElementById('wards_list');
    const current_drop_down = document.getElementById('lgas_list')

    let selection = current_drop_down.value;
    let url = '/ward/' + selection;

    document.getElementById('wards_list').innerHTML = '';
    document.getElementById('pol_unit_list').innerHTML = '';

    // hideForm();
    next_drop_down.innerHTML = ''
    do_fetch(url, next_drop_down, 'ward_name');
}

function getPollingUnits() {
    const next_drop_down = document.getElementById('pol_unit_list');
    const current_drop_down = document.getElementById('wards_list')

    let selection = current_drop_down.value;
    let url = '/pol/' + selection;

    displayForm()
    next_drop_down.innerHTML = ''
    do_fetch(url, next_drop_down, 'pu_name', 'uniquewardid');
    console.log('Here')


}

function displayForm() {

    const pol_uniqueid = document.getElementById('pol_uniqueid');

    const current_drop_down = document.getElementById('pol_unit_list')

    const form = document.getElementById('form_params')
    form.style.display = 'block';

    let selection = current_drop_down.value;
    console.log(selection)
    let url = '/pol_unit/' + selection;

    let uniqueid = set_pol_id(url)

    pol_uniqueid.setAttribute('value', uniqueid)

}


function set_pol_id(url) {
    console.log(url)
    fetch(url)
        .then((response) => response.json())
        .then((data) => {
            console.log(data.polling_unit_data);
            let list = data

            return list.polling_unit_number
        });
}

function hideForm() {
//    Hide form
    const form = document.getElementById('form_params')
    form.style.display = 'none'
}
