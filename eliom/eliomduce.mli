(* Ocsigen
 * http://www.ocsigen.org
 * Module Eliomduce
 * Copyright (C) 2007 Vincent Balat, Alain Frisch
 * CNRS - Université Paris Diderot Paris 7
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, with linking exception; 
 * either version 2.1 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *)

(** A module to generate pages using OCamlduce *)

(** For now, it does not seem to be easy to create a functor like 
    {!Eliompredefmod.SubXhtml} for Eliomduce. Use {!Xml} or
    {!Xmllist} instead. *)

open Xhtml1_strict

module Xhtml : Eliompredefmod.ELIOMSIG with 
type page = html
and type form_content_elt = form_content
and type form_content_elt_list = {{ [ form_content* ] }}
and type uri = string
and type a_content_elt = a_content
and type a_content_elt_list = {{ [ a_content* ] }}
and type div_content_elt = flows
and type div_content_elt_list = {{ [ flows* ] }}
and type a_elt = a
and type a_elt_list = {{ [ a* ] }}
and type form_elt = form
and type textarea_elt = textarea
and type select_elt = select
and type input_elt = input
and type link_elt = link
and type script_elt = script
and type pcdata_elt = {{ [ PCDATA ] }}
and type a_attrib_t = a_attrs
and type form_attrib_t = 
    {{ attrs ++ { accept-charset=?String accept=?String 
	          onreset=?String onsubmit=?String enctype=?String } }}
and type input_attrib_t = input_attrs
and type textarea_attrib_t = {{ attrs ++ focus ++ 
	{ onchange=?String
            onselect=?String 
	    readonly=?"readonly" 
            disabled=?"disabled" 
	    name=?String } }}
and type select_attrib_t = select_attrs
and type link_attrib_t = link_attrs
and type script_attrib_t = 
    {{ id ++ { defer=?"defer" src=?String charset=?String } }}
and type input_type_t = input_type_values
(** Register and create form for Xhtml *)


module Xml : Eliompredefmod.ELIOMSIG with 
type page = Ocamlduce.Load.anyxml
and type form_content_elt = form_content
and type form_content_elt_list = {{ [ form_content* ] }}
and type uri = string
and type a_content_elt = a_content
and type a_content_elt_list = {{ [ a_content* ] }}
and type div_content_elt = flows
and type div_content_elt_list = {{ [ flows* ] }}
and type a_elt = a
and type a_elt_list = {{ [ a* ] }}
and type form_elt = form
and type textarea_elt = textarea
and type select_elt = select
and type input_elt = input
and type link_elt = link
and type script_elt = script
and type pcdata_elt = {{ [ PCDATA ] }}
and type a_attrib_t = a_attrs
and type form_attrib_t = 
    {{ attrs ++ { accept-charset=?String accept=?String 
	          onreset=?String onsubmit=?String enctype=?String } }}
and type input_attrib_t = input_attrs
and type textarea_attrib_t = {{ attrs ++ focus ++ 
	{ onchange=?String
            onselect=?String 
	    readonly=?"readonly" 
            disabled=?"disabled" 
	    name=?String } }}
and type select_attrib_t = select_attrs
and type link_attrib_t = link_attrs
and type script_attrib_t = 
    {{ id ++ { defer=?"defer" src=?String charset=?String } }}
and type input_type_t = input_type_values
(** Register and create form for any XML data type *)


module Xmllist : Eliompredefmod.ELIOMSIG with 
type page = Ocamlduce.Load.anyxml list
and type form_content_elt = form_content
and type form_content_elt_list = {{ [ form_content* ] }}
and type uri = string
and type a_content_elt = a_content
and type a_content_elt_list = {{ [ a_content* ] }}
and type div_content_elt = flows
and type div_content_elt_list = {{ [ flows* ] }}
and type a_elt = a
and type a_elt_list = {{ [ a* ] }}
and type form_elt = form
and type textarea_elt = textarea
and type select_elt = select
and type input_elt = input
and type link_elt = link
and type script_elt = script
and type pcdata_elt = {{ [ PCDATA ] }}
and type a_attrib_t = a_attrs
and type form_attrib_t = 
    {{ attrs ++ { accept-charset=?String accept=?String 
	          onreset=?String onsubmit=?String enctype=?String } }}
and type input_attrib_t = input_attrs
and type textarea_attrib_t = {{ attrs ++ focus ++ 
	{ onchange=?String
            onselect=?String 
	    readonly=?"readonly" 
            disabled=?"disabled" 
	    name=?String } }}
and type select_attrib_t = select_attrs
and type link_attrib_t = link_attrs
and type script_attrib_t = 
    {{ id ++ { defer=?"defer" src=?String charset=?String } }}
and type input_type_t = input_type_values
(** Register and create form for list of XML data type *)

module Blocks : Eliompredefmod.ELIOMSIG with 
type page = blocks
and type form_content_elt = form_content
and type form_content_elt_list = {{ [ form_content* ] }}
and type uri = string
and type a_content_elt = a_content
and type a_content_elt_list = {{ [ a_content* ] }}
and type div_content_elt = flows
and type div_content_elt_list = {{ [ flows* ] }}
and type a_elt = a
and type a_elt_list = {{ [ a* ] }}
and type form_elt = form
and type textarea_elt = textarea
and type select_elt = select
and type input_elt = input
and type link_elt = link
and type script_elt = script
and type pcdata_elt = {{ [ PCDATA ] }}
and type a_attrib_t = a_attrs
and type form_attrib_t = 
    {{ attrs ++ { accept-charset=?String accept=?String 
	          onreset=?String onsubmit=?String enctype=?String } }}
and type input_attrib_t = input_attrs
and type textarea_attrib_t = {{ attrs ++ focus ++ 
	{ onchange=?String
            onselect=?String 
	    readonly=?"readonly" 
            disabled=?"disabled" 
	    name=?String } }}
and type select_attrib_t = select_attrs
and type link_attrib_t = link_attrs
and type script_attrib_t = 
    {{ id ++ { defer=?"defer" src=?String charset=?String } }}
and type input_type_t = input_type_values
(** Register and create form for list of [blocks] (subtype of xhtml) *)

module SubXhtml :
  functor(T : sig 
            type content
            val print : (string -> unit ) -> content -> unit 
          end) ->
sig

  include Eliommkreg.ELIOMREGSIG with type page = T.content
  include Eliommkforms.ELIOMFORMSIG with 
      type form_content_elt = form_content
  and type form_content_elt_list = {{ [ form_content* ] }}
  and type uri = string
  and type a_content_elt = a_content
  and type a_content_elt_list = {{ [ a_content* ] }}
  and type div_content_elt = flows
  and type div_content_elt_list = {{ [ flows* ] }}
  and type a_elt = a
  and type a_elt_list = {{ [ a* ] }}
  and type form_elt = form
  and type textarea_elt = textarea
  and type select_elt = select
  and type input_elt = input
  and type link_elt = link
  and type script_elt = script
  and type pcdata_elt = {{ [ PCDATA ] }}
  and type a_attrib_t = a_attrs
  and type form_attrib_t = 
      {{ attrs ++ { accept-charset=?String accept=?String 
  	          onreset=?String onsubmit=?String enctype=?String } }}
  and type input_attrib_t = input_attrs
  and type textarea_attrib_t = {{ attrs ++ focus ++ 
  	{ onchange=?String
              onselect=?String 
  	    readonly=?"readonly" 
              disabled=?"disabled" 
  	    name=?String } }}
  and type select_attrib_t = select_attrs
  and type link_attrib_t = link_attrs
  and type script_attrib_t = 
      {{ id ++ { defer=?"defer" src=?String charset=?String } }}
  and type input_type_t = input_type_values



end




