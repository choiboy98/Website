import { Country } from "../app/components/country";

const Title = "TAIWAN";
const CountryCode = "TW";
const TitleText = "Taiwan has the best food and people by far!";
const SubText =
    "I am for sure visiting Taiwan again. I didn't get to visit the night market! I was hungover from going out on my friend's birthday (oops me). The food and the people were absolutely unbeatable and fantastic. I do want to learn more chinese to be able to speak with the locals there.";
const textStyles = {
    color: '#A7C7E7'
};

export const data = new Country(Title, CountryCode, TitleText, SubText, textStyles);