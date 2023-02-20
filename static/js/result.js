function getLGAs() {
    const next_drop_down = document.getElementById('lgas_list');
    const current_drop_down = document.getElementById('states_list')


    let selected_state = current_drop_down.value;
    let url = '/state/' + selected_state;

    next_drop_down.innerHTML = ''
    do_fetch(url, next_drop_down, 'lga_name');
}

function do_fetch(url, drop_down, pat) {
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

    next_drop_down.innerHTML = ''
    do_fetch(url, next_drop_down, 'ward_name');
}

function getPollingUnits() {
    const next_drop_down = document.getElementById('pol_unit_list');
    const current_drop_down = document.getElementById('wards_list')

    let selection = current_drop_down.value;
    let url = '/pol/' + selection;

    next_drop_down.innerHTML = ''
    do_fetch(url, next_drop_down, 'pu_name', 'uniquewardid');
    console.log('Here')
}

function displayForm() {
    const next_drop_down = document.getElementById('lgas_list');
    const current_drop_down = document.getElementById('states_list')

    let selection = current_drop_down.value;
//    Display form
}

function hideForm() {
//    Hide form
}