import React, { Dispatch, SetStateAction } from 'react';
import '../css/countries.css';
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
        src={'../brb-traveling/assets/flags/4x3/' + country.countryCode + '.svg'}/>
    )
}