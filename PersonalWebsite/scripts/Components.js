function pageLoad(sender, args) {

    $(document).ready(function () {

        //Get the text of the selected component from the Component Dropdown list
        var selectedComponent = $("[id*='ComponentSelectDropdown'] :selected").text();

        //Assign the correct form for the 'New Component' Popup panel based on the dropdown selection
        switch (selectedComponent) {

            case "Batteries":
                $('#PopupFrame').attr('src', 'new_component_forms/NewBattery.aspx')
                break;

            case "Motors":
                $('#PopupFrame').attr('src', 'new_component_forms/NewMotor.aspx')
                break;

            case "Propellers":
                $('#PopupFrame').attr('src', 'new_component_forms/NewPropeller.aspx')
                break;

            case "Receivers":
                $('#PopupFrame').attr('src', 'new_component_forms/NewReceiver.aspx')
                break;

            case "Servos":
                $('#PopupFrame').attr('src', 'new_component_forms/NewServo.aspx')
                break;

            case "Speed Controllers":
                $('#PopupFrame').attr('src', 'new_component_forms/NewSpeedController.aspx')
                break;
        }



    })
}




