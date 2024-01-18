'use client';

import 'landing.css'
import { useState } from 'react';

import CountryButton from './countryButton';
import CountryRenderer from './countryRenderer';
import { countries } from "./countryExport";
import { Country } from '@/country';

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
        <video className="vid" autoPlay loop muted={isMuted}>
          <source src="./assets/videos/taiwan-website.mp4" type="video/mp4"/>
        </video>

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
