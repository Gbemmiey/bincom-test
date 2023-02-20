function getVoteCounts() {
    const votes_text = document.getElementById('total_votes')
    const selection = document.getElementById('lga_list')

    let sel_lga = selection.value;
    let text = selection.options[selection.selectedIndex].text;

    console.log(sel_lga)
    console.log(text)

    votes_text.textContent = sel_lga;
    let url = '/lga/' + sel_lga


    fetch(url)
        .then((response) => response.json())
        .then((data) => {
            votes_text.textContent = data.sum + ' votes'

        });


}

