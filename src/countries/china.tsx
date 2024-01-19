import { Country } from "../app/country";

const Title = "CHINA";
const CountryCode = "CN";
const TitleText = "Only talk about the weather and sports!";
const SubText =
    "It is quite remarkabe how everything is under one system (definitely scary). Seeing surveillance cameras everywhere you go is an experience. Regardless, what an experience it was. The food, the people, and the view were something else.";
const textStyles = {
    color: '#A7C7E7'
};

export const data = new Country(Title, CountryCode, TitleText, SubText, textStyles);