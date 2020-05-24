
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 121.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Christum wir sollen loben schon" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
	R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        R1 |
	R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
	R1 |
        R1 |
        R1 |
        R1 |
        \tempo 4 = 40 r1 |
	}

  upper = {
	\time 4/4
	\key b \minor
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        e8 fis |
        g4 g a b4 ~ |
	b4 e,4 a g |
        fis2.\fermata a4 |
        b8 cis d2 cis4 |
        b4 a b8 cis d4 |
        d2.\fermata a4 |
        b8 cis d2 cis4 |
        b4 a b8 cis d4 ~ |
	d4 a8 g fis g a4 |
        b2.\fermata e,8 fis |
        g4 g8 a b c d4 ~ |
	d4 b4 a8 g fis g |
        a4 g fis2 ~ |
        fis1 ~ |
        fis1 ~ |
        fis1_\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        b4 |
        e4 e e fis ~ |
	fis4 e4 dis e |
        dis2. d4 |
        g4 fis8 g a4 e8 fis |
        g4 fis8 e d4 g |
        fis2. fis8 e |
        d8 e fis2 fis8 e |
        d8 e fis4 g d8 e |
        fis2. e4 |
        fis2. e8 dis |
        e8 fis g4 fis8 e d c |
        b8 c d e fis4. e8 |
        dis4 e4 ~ e d8 cis |
        d8 e fis2 gis8 ais |
        b1 ~ |
        b4 ais8 gis ais2^\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key b \minor
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        g8 a8 |
        b4 b a2 |
        g8 a b4 a b |
        b2. a4 |
        e'4 a,4 ~ a8 b cis d |
        e8 d cis4 b b |
        a2. d8 e |
        fis4 b,2 a4 |
        b8 cis d4 g,8 a b4 ~ |
	b8 cis8 d4 cis8 dis e4 |
        dis2. b4 |
        b4 b8 c d e fis4 |
        g4 g, d'8 e fis4 ~ |
	fis4 e8 d cis!4 fis, |
        b8 fis b4 ~ b8 ais b cis |
        d1 ~ |
        d4 cis8 b cis2 |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        e,4 |
        e'4 e8 d cis4 dis |
        e8 fis g4 fis e |
        b2.\fermata fis4 |
        e4 d8 e fis g a4 |
        e4 fis g8 a b cis |
        d2.\fermata d8 cis |
        b4. cis8 d e fis4 |
        g4 fis e b8 cis |
        d8 e fis g a b c4 |
        b2.\fermata g8 fis |
        e4 e d8 c b a |
        g8 a b c d4. c!8 |
        b4 c8 b ais2 |
        b8 cis d e fis4. e8 |
        d8 cis8 b ais b d cis b |
        fis'2 fis,\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "56." }
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
	>>

    \layout {
%	ragged-last = ##f
	   }

         } % fin de score

  \score {
    \unfoldRepeats { << \guidemidi \upper \lower >> }
    \midi {
    \context {
     \Staff
      \remove "Staff_performer"
               }

     \context {
      \Voice
       \consists "Staff_performer"
                }

     \context { 
      \Score
      tempoWholesPerMinute = #(ly:make-moment 78 4)
		}
	    }
	}

