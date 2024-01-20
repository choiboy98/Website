'use client';

import './landing.css'
import { useState } from 'react';
import { LazyLoadComponent } from 'react-lazy-load-image-component';

import CountryButton from './countryButton';
import CountryRenderer from './countryRenderer';
import { countries } from "./countryExport";
import { Country } from '@/app/country';

export default function Home() {
  const dummyCountry = new Country("", "", "", "", "");
  const [currCountry, setCountry] = useState(dummyCountry);
  const [isFocused, setFocus] = useState(false);
  const [isMuted, toggleMute] = useState(false);

  function handleClick(country : Country) {
    if (!isFocused) {
      setFocus(!isFocused);
    }

    if (country.equals(currCountry)) {
      setFocus(!isFocused);
      setCountry(dummyCountry);
    }
  }

  return (
    <div className='background-page'>
      <div className={isFocused ? "focused-vid" : "landing-vid"}>
        <LazyLoadComponent>
          <video className="vid" loop muted={isMuted} preload='none'>
            <source src="https://media.githubusercontent.com/media/choiboy98/brb-traveling/main/public/assets/videos/taiwan-website-smallest.mp4" type="video/mp4"/>
          </video>
        </LazyLoadComponent>
        <p onClick={() => toggleMute(!isMuted)} className='mute'>{isMuted ? "unmute" : "mute"}</p>
      </div>
      
      <div className="landing-container">
        <p className={isFocused ? "vanish-landing-text" : "landing-text"}>
            BRB TRAVELING
        </p>
        
        {CountryRenderer(
          countries.flatMap(country => {
            return (country.title)
          }), isFocused
        )}
        
        <div className='flag-container'>
          {countries.map(country => {
            return (
              CountryButton(country, setCountry, () => {handleClick(country)})
            )
          })}
        </div>
      </div>
      
      <div className={isFocused ? "country-text" : "vanish-country-text"}>
          <p className='country-header-text'>
            {currCountry.titleText}
          </p>

          <p className='country-sub-text'>
            {currCountry.subText}
          </p>
        </div>
    </div>
  )
}
