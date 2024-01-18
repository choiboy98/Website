import React, { Dispatch, SetStateAction } from 'react';
import 'countries.css';
import { Country } from './country';

function focusCountry(country: Country, displaySelectedCountry: Dispatch<SetStateAction<Country>>, showcaseCountry = () => {}) {
    displaySelectedCountry(country);
    showcaseCountry();
}

export default function CountryButton(country: Country, displaySelectedCountry: Dispatch<SetStateAction<Country>>, showcaseCountry = () => {}) {
    return (
        <img 
        onClick={() => focusCountry(country, displaySelectedCountry, showcaseCountry)}
        className='flag' 
        src={'./assets/flags/4x3/' + country.countryCode.toLowerCase() + '.svg'}/>
    )
}