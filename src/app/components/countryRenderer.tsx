import { useState } from "react";
import { useTransition, animated } from '@react-spring/web'
import './countries.css';

export default function CountryRenderer(slides : Array<String>, isFocused: Boolean) {

    const [slideIndex, set] = useState(0)
    const slideTransitions = useTransition(slideIndex, {
        key: slideIndex,
        from: { opacity: 0 },
        enter: { opacity: 1 },
        leave: { opacity: 0 },
        config: { duration: 2000 },
        onRest: (_a, _b, item) => {
        if (slideIndex === item) {
            set(state => (state + 1) % slides.length)
        }
        },
        exitBeforeEnter: true,
    })

    return (
        <div className={isFocused ? "hide-country-container" : "country-container"}>
            <p className="title-text">
                IN&nbsp;
            </p>
            {slideTransitions((style, i) => (
            <animated.div style={{...style}}> 
                <p className="sliding-title-text">
                    {slides[i]}
                </p>
            </animated.div> 
            ))}        
        </div>
        
    )
}