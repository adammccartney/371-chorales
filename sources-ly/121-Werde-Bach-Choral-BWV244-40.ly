
\version "2.13.51"

    \paper {
%	system-system-spacing #'padding = #0.1
%	score-system-spacing #'padding = #0.1
%	ragged-bottom = ##f
%	ragged-last-bottom = ##f
	}

    \header {
      opus = \markup { \bold "BWV 244.40" }
      piece = \markup { \hspace #9 \fontsize #2 \bold "Werde munter, mein Gemüte" }
      maintainer = "Ph. Hardy"
      maintainerEmail = "superbonus.project@free.fr"
      lastupdated = "2011/Fev/25"
      tagline = \markup { \fontsize #3 \bold "Free Art License" }
      copyright = \markup { \fontsize #3  \bold   \override #'(box-padding .  1.0) \override #'(baseline-skip . 2.9) \box \column { \center-align { \fontsize #-2 \line { • \hspace #0.5 Copyleft 2011/01: cette oeuvre est libre, vous pouvez la (photo)copier, } \line { \fontsize #-2 \line {la diffuser ou la modifier, selon les termes de la Licence Art Libre, voir: } } \line { \fontsize #-2 \with-url #"http://www.artlibre.org/licence/lal/" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://www.artlibre.org/licence/lal/ [en, de, es, pt, it] } } \line { \fontsize #-2 \line { Créé avec GNU LilyPond 2.13.51 \with-url #"http://www.LilyPond.org" \line { \with-color #blue \fontsize #1 \hspace #1.0 \with-color #blue http://www.LilyPond.org } } } \line { \hspace #1.0 \fontsize #-2 \line {par Ph. Hardy. } \line { \fontsize #-2 \with-url #"http://superbonus.project.free.fr" \line { \fontsize #1 \hspace #1.0 \with-color #blue http://superbonus.project.free.fr } } } } } }

	  }

  guidemidi = {
        r4 
        \repeat volta 2 {
        r2. |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 | } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
          r4 }
          { \set Timing.measureLength = #(ly:make-moment 4 4)
            R1 | }
        }
        
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2 \tempo 4 = 34 r2 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 \tempo 4 = 78 |
        R1 |
        r2. \tempo 4 = 30 r4 |
	}

  upper = {
	\time 4/4
	\key a \major
	\clef treble
	\voiceOne
	<< { 
	% SOPRANO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        cis4 
        \repeat volta 2 {
        d4 e e |
        d4 cis b b\fermata |
        cis4 d e d8 cis |
        b4 ~ b8 a a2\fermata | } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
          cis4 }
          { \set Timing.measureLength = #(ly:make-moment 4 4)
            b4 cis d8 cis d e | }
        }
        
        cis4 cis b2\fermata |
        d4 e fis e8 fis16 g |
        fis4 e8 d d2\fermata |
        cis4 d e e |
        d4 cis b b\fermata |
        cis4 d e a,8 b |
        cis4 b8 a a4 a\fermata |
        \bar "|."
	} % fin de relative
	}

	\context Voice="1" { \voiceTwo 
	% ALTO
	\set Voice.midiInstrument = "acoustic grand"
	\relative c'' {
        a8[ gis ]
        \repeat volta 2 {
        fis4 b8 a gis4 |
        fis4 e8 fis gis4 gis |
        a8 gis a4 a8 gis a4 |
        a8 fis gis4 e2 | } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            a8 gis }
          { \set Timing.measureLength = #(ly:make-moment 4 4)
            gis4 ais b8 ais! b4 | }
        }
        
        b4 ais fis2 |
        b4 b8 a! a4 b |
        a4 g8 fis fis2 |
        e4 a gis b8 a |
        a8 gis a4 e8 fis gis4 |
        a4 gis8 fis e gis a4 |
        a4 gis e e |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}

    lower = {
	\time 4/4
	\key a \major
	\clef bass
	\voiceOne
	<< { 
	% TENOR
	\set Voice.midiInstrument = "acoustic grand"
	\relative c' {
        fis8[ e ]
        \repeat volta 2 {
        d8 cis b4 cis8 b |
        a8 b cis d e4 e |
        e4 a,8 b cis d e4 |
        fis4 e8 d cis2 | } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            e4 }
          { \set Timing.measureLength = #(ly:make-moment 4 4)
            e4 e fis e8 d | }
        }
        
        g4 fis8 e d2 |
        fis4 e d8 cis d4 |
        d8 b cis4 a2 |
        a4 b8 cis b4 cis |
        d8 e fis4 gis e |
        e4 d cis8 d e fis |
        e4 d8 cis cis4 cis |
        \bar "|."
	} % fin de relative
	}
	\context Voice="1" { \voiceTwo 
	% BASS
	\set Voice.midiInstrument = "acoustic grand"
	\relative c {
        fis4 
        \repeat volta 2 {
        b8 a gis fis e4 |
        fis8 gis a4 e e\fermata |
        a4 fis cis b8 a |
        d4 e a,2\fermata | } %fin du repeat
        \alternative {
          { \set Timing.measureLength = #(ly:make-moment 1 4)
            a'4 }
          { \set Timing.measureLength = #(ly:make-moment 4 4)
            e4 d8 cis b4 g' | }
        }
        
        e4 fis b,2\fermata |
        b4 cis d g |
        a4 a, d2\fermata |
        a'4 gis!8 fis gis4 cis, |
        fis4 e8 dis e4 e,\fermata |
        a8 gis a b cis b cis d |
        e4 e, a a4\fermata |
        \bar "|."
	} % fin de relative
	\oneVoice
	} >>
	}


    \score { 

	\new PianoStaff <<
	\set PianoStaff.instrumentName = \markup { \bold \huge "121." }
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

