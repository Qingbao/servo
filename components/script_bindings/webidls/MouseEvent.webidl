/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/. */

// https://w3c.github.io/uievents/#interface-mouseevent
[Exposed=Window]
interface MouseEvent : UIEvent {
    [Throws] constructor(DOMString typeArg, optional MouseEventInit mouseEventInitDict = {});
    readonly    attribute long           screenX;
    readonly    attribute long           screenY;
    readonly    attribute long           clientX;
    readonly    attribute long           clientY;
    readonly    attribute long           pageX;
    readonly    attribute long           pageY;
    readonly    attribute long           x;
    readonly    attribute long           y;
    readonly    attribute long           offsetX;
    readonly    attribute long           offsetY;
    readonly    attribute boolean        ctrlKey;
    readonly    attribute boolean        shiftKey;
    readonly    attribute boolean        altKey;
    readonly    attribute boolean        metaKey;
    readonly    attribute short          button;
    readonly    attribute EventTarget?   relatedTarget;
    // Introduced in DOM Level 3
    readonly    attribute unsigned short buttons;
    //boolean getModifierState (DOMString keyArg);

    [Pref="dom_mouse_event_which_enabled"]
    readonly    attribute long           which;
};

// https://w3c.github.io/uievents/#dictdef-eventmodifierinit
dictionary MouseEventInit : EventModifierInit {
    long           screenX = 0;
    long           screenY = 0;
    long           clientX = 0;
    long           clientY = 0;
    short          button = 0;
    unsigned short buttons = 0;
    EventTarget?   relatedTarget = null;
};

// https://w3c.github.io/uievents/#idl-interface-MouseEvent-initializers
partial interface MouseEvent {
    // Deprecated in DOM Level 3
    undefined initMouseEvent (DOMString typeArg, boolean bubblesArg, boolean cancelableArg,
                         Window? viewArg, long detailArg,
                         long screenXArg, long screenYArg,
                         long clientXArg, long clientYArg,
                         boolean ctrlKeyArg, boolean altKeyArg,
                         boolean shiftKeyArg, boolean metaKeyArg,
                         short buttonArg, EventTarget? relatedTargetArg);
};
