
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 37.6" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Ich dank dir, lieber Herre" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        \tempo 4 = 40 r2. \tempo 4 = 78 r4 |
        R1 |
        r2 \tempo 4 = 30 r4 \tempo 4 = 78 r4 |
        R1 |
        R1 |
        \tempo 4 = 40 r2. 
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\partial 4
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a4 |
        a4 a a b |
        g4 fis e\fermata b' |
        cis4 b a gis8 fis |
        gis4 fis e\fermata e |
        a4 a a b |
        gis!4 fis e\fermata b' |
        cis4 b a gis8 fis |
        gis4 fis e\fermata e' |
        d4 cis b a |
        a8 b cis4 b\fermata cis |
        d4 cis b ais! |
        b2.\fermata e,4 |
        a4 b cis d |
        e4 d8 cis b4\fermata d |
        cis4 b e4. d8 |
        cis8 b a b cis4 b |
        a2.\fermata
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        cis8 d |
        e4 e fis fis |
        e4 dis b gis' |
        a4 gis cis,8 dis e4 ~ |
	e4 dis4 b b |
        cis8 d e4 dis8 e fis4 |
        b,8 e8 ~ e dis e4 e |
        e4 e e ~ e8 dis |
        cis4 dis b gis' |
        fis4 e8 fis gis4 a8 g |
        fis8 gis! a4 gis ais |
        b4 ais b fis |
        fis2. e4 |
        cis4 e e fis |
        e4 fis gis fis |
        e4 e8 fis gis4 a |
        e2 ~ e8 d d cis |
        cis2.
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\partial 4
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        a4 |
        a8 b cis4 d8 cis b4 |
        b4 a16 gis! a8 gis4 e' |
        e4 e8 dis cis b16 a b8 cis |
        b4 a16 gis a8 gis4 gis |
        a8 g fis e fis4 fis |
        gis!8. a16 b8 a gis4 b |
        a4 b cis b8 dis |
        e4 b gis cis |
        a8 b cis d e4 e |
        d4 cis8 d e4 e |
        fis4 e fis8 e16 d cis4 |
        d2. gis,4 |
        fis4 gis a a8 b |
        cis4 b8 a e'4 a,8 b |
        cis8 d e4 b a ~ |
	a4 a ~ a4 gis4 |
        e2.
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 |
        cis4 a d dis |
        e4 b e\fermata e |
        a,4 e' fis gis8 a |
        b4 b, e\fermata d |
        cis4 c b8 cis dis4 |
        e4 b e\fermata gis |
        a4 gis cis,8 dis e4 |
        a,4 b e\fermata cis |
        fis8 gis a4 e8 d cis4 |
        d4 a e'\fermata cis |
        b4 cis d8 e fis4 |
        b,2.\fermata cis4 |
        fis4 e a fis |
        cis4 d e\fermata fis8 gis |
        a4 gis8 fis e d cis b |
        a8 b cis d e4 e |
        a,2.\fermata
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "341." }
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

