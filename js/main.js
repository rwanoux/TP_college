const baseURL = "./TP_college/index.php";


let researchInput = document.getElementById('researchInput');
let resetFilterButton = document.getElementById('resetFilter');
let researchValue;


let itemRows = document.getElementsByClassName('item-row');

if (itemRows) {
    for (let row of itemRows) {
        row.addEventListener('click', ev => {
            let itemType = ev.currentTarget.getAttribute('itemType');
            let itemId = ev.currentTarget.getAttribute('itemId');
            console.log(itemId, itemType);
            let link = `index.php?entityType=${itemType}&entityId=${itemId}`;
            window.location.href = link;


        })
    };
}


if (researchInput) {
    researchInput.addEventListener('keydown', ev => {
        researchValue = researchInput.value.toLowerCase();
        if (ev.key.length === 1) {
            researchValue = researchInput.value + ev.key.toLowerCase();
        }
        filter(researchValue)
    });
    resetFilterButton.addEventListener('click', ev => {
        ev.preventDefault();
        researchInput.value = "";
        filter("")
    });
}


function filter(strg) {
    if (strg != "") {
        console.log(strg);
        for (let row of itemRows) {
            let founded = false;
            for (let cell of row.getElementsByClassName('item-attribut')) {

                if (cell.innerHTML.toLowerCase().indexOf(strg) != -1) {
                    founded = true;

                }
            }
            if (founded === false) {
                row.style.display = "none";
            } else { row.style.display = "" }
        }
    } else {
        for (let row of itemRows) {
            row.style.display = "";
        }

    }
}



let tabsNav = document.getElementsByClassName('tabNav');
let tabsContent = document.getElementsByClassName('tab');

for (let tab of tabsNav) {
    tab.addEventListener('click', ev => {
        let tabtarget;
        tabtarget = ev.currentTarget.getAttribute("tabTarget")

        toggleTabContent(tabtarget);
    });


}
function toggleTabContent(target) {
    console.log(target);
    for (let content of tabsContent) {
        if (content.getAttribute("tabName") == target) {
            content.classList.add('active')
        } else {
            content.classList.remove('active')
        }
    }
}