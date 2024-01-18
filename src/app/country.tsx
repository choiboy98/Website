export class Country {
    title: string;
    countryCode: string;
    titleText: string;
    subText: string;
    textStyles: any;
    
    constructor(
        title : string,
        countryCode : string,
        titleText : string,
        subText : string,
        textStyles : any,
    ) {
        this.title = title;
        this.countryCode = countryCode;
        this.titleText = titleText;
        this.subText = subText;
        this.textStyles = textStyles;
    }

    equals(otherCountry : Country) {
        return this.title == otherCountry.title && this.countryCode == otherCountry.countryCode && 
        this.titleText == otherCountry.titleText && this.subText == otherCountry.subText && this.textStyles == otherCountry.textStyles;
    }
}