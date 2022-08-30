require './the_pig_latin'

RSpec.describe ThePigLatin, "Translate" do
  context "words that begin with consonant sounds" do
    it do
      expect(ThePigLatin.translate("pig")).to eq("igpay") 
    end
    it do
      expect(ThePigLatin.translate("banana")).to eq("ananabay") 
    end
    it do
      expect(ThePigLatin.translate("will")).to eq("illway") 
    end
    it do
      expect(ThePigLatin.translate("latin")).to eq("atinlay")
    end
    it do
      expect(ThePigLatin.translate("butler")).to eq("utlerbay") 
    end
    it do
      expect(ThePigLatin.translate("happy")).to eq("appyhay") 
    end
  end

  context "words begin with consonant clusters" do
    it do
      expect(ThePigLatin.translate("smile")).to eq("ilesmay") 
    end
    it do
      expect(ThePigLatin.translate("string")).to eq("ingstray") 
    end
    it do
      expect(ThePigLatin.translate("stupid")).to eq("upidstay") 
    end
    it do
      expect(ThePigLatin.translate("glove")).to eq("oveglay")
    end
    it do
      expect(ThePigLatin.translate("trash")).to eq("ashtray") 
    end
    it do
      expect(ThePigLatin.translate("floor")).to eq("oorflay") 
    end
  end

  context "words that begin with vowel sounds, generally only a syllable 'yay' is appended to the end" do
    it do
      expect(ThePigLatin.translate("eat")).to eq("eatyay").or eq("eatway").or eq("eathay")
    end
    it do
      expect(ThePigLatin.translate("omelet")).to eq("omeletyay").or eq("omeletway").or eq("omelethay")
    end
    it do
      expect(ThePigLatin.translate("are")).to eq("areyay").or eq("areway").or eq("arehay")
    end
    it do
      expect(ThePigLatin.translate("egg")).to eq("eggyay").or eq("eggway").or eq("eggyay")
    end
    it do
      expect(ThePigLatin.translate("explain")).to eq("explainyay").or eq("explainway").or eq("explainhay")
    end
  end
end

