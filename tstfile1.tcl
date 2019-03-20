#! /usr/bin/tclsh
# open — Open a file-based or command pipeline channel
# SYNOPSIS
# DESCRIPTION
    # r
    # r+
    # w
    # w+
    # a
    # a+
    # RDONLY
    # WRONLY
    # RDWR
    # APPEND
    # BINARY
    # CREAT
    # EXCL
    # NOCTTY
    # NONBLOCK
    # TRUNC
# COMMAND PIPELINES
# SERIAL COMMUNICATIONS
    # -mode baud,parity,data,stop
    # -handshake type
    # -queue
    # -timeout msec
    # -ttycontrol {signal boolean signal boolean ...}
    # -ttystatus
    # -xchar {xonChar xoffChar}
    # -pollinterval msec
    # -sysbuffer inSize
    # -sysbuffer {inSize outSize}
    # -lasterror
# SERIAL PORT SIGNALS
    # TXD(output)
    # RXD(input)
    # RTS(output)
    # CTS(input)
    # DTR(output)
    # DSR(input)
    # DCD(input)
    # RI(input)
    # BREAK
# ERROR CODES (Windows only)
    # RXOVER
    # TXFULL
    # OVERRUN
    # RXPARITY
    # FRAME
    # BREAK
# PORTABILITY ISSUES
    # Windows
    # Unix


# open filename access permissions
# set fp [open /tmp/text.txt a+]
# puts $fp "Hello Again"
# flush $fp
# close $fp

set fp [open /tmp/text.txt RDONLY]
close $fp


# fconfigure channel name value name value...
# -blocking boolean
# The -blocking option determines whether I/O operations on the channel can cause the process to block indefinitely. The value of the option must be a proper boolean value. Channels are normally in blocking mode; if a channel is placed into nonblocking mode it will affect the operation of the gets, read, puts, flush, and close commands by allowing them to operate asynchronously; see the documentation for those commands for details. For nonblocking mode to work correctly, the application must be using the Tcl event loop (e.g. by calling Tcl_DoOneEvent or invoking the vwait command).
# -buffering newValue
# If newValue is full then the I/O system will buffer output until its internal buffer is full or until the flush command is invoked. If newValue is line, then the I/O system will automatically flush output for the channel whenever a newline character is output. If newValue is none, the I/O system will flush automatically after every output operation. The default is for -buffering to be set to full except for channels that connect to terminal-like devices; for these channels the initial setting is line. Additionally, stdin and stdout are initially set to line, and stderr is set to none.



# -buffersize newSize
# Newvalue must be an integer; its value is used to set the size of buffers, in bytes, subsequently allocated for this channel to store input or output. Newvalue must be between one and one million, allowing buffers of one to one million bytes in size.
# -encoding name
# This option is used to specify the encoding of the channel, so that the data can be converted to and from Unicode for use in Tcl. For instance, in order for Tcl to read characters from a Japanese file in shiftjis and properly process and display the contents, the encoding would be set to shiftjis. Thereafter, when reading from the channel, the bytes in the Japanese file would be converted to Unicode as they are read. Writing is also supported - as Tcl strings are written to the channel they will automatically be converted to the specified encoding on output.
# If a file contains pure binary data (for instance, a JPEG image), the encoding for the channel should be configured to be binary. Tcl will then assign no interpretation to the data in the file and simply read or write raw bytes. The Tcl binary command can be used to manipulate this byte-oriented data. It is usually better to set the -translation option to binary when you want to transfer binary data, as this turns off the other automatic interpretations of the bytes in the stream as well.

# The default encoding for newly opened channels is the same platform- and locale-dependent system encoding used for interfacing with the operating system, as returned by encoding system.

# -eofchar char
# -eofchar {inChar outChar}
# This option supports DOS file systems that use Control-z (\x1a) as an end of file marker. If char is not an empty string, then this character signals end-of-file when it is encountered during input. For output, the end-of-file character is output when the channel is closed. If char is the empty string, then there is no special end of file character marker. For read-write channels, a two-element list specifies the end of file marker for input and output, respectively. As a convenience, when setting the end-of-file character for a read-write channel you can specify a single value that will apply to both reading and writing. When querying the end-of-file character of a read-write channel, a two-element list will always be returned. The default value for -eofchar is the empty string in all cases except for files under Windows. In that case the -eofchar is Control-z (\x1a) for reading and the empty string for writing. The acceptable range for -eofchar values is \x01 - \x7f; attempting to set -eofchar to a value outside of this range will generate an error.
# -translation mode
# -translation {inMode outMode}
# In Tcl scripts the end of a line is always represented using a single newline character (\n). However, in actual files and devices the end of a line may be represented differently on different platforms, or even for different devices on the same platform. For example, under UNIX newlines are used in files, whereas carriage-return-linefeed sequences are normally used in network connections. On input (i.e., with gets and read) the Tcl I/O system automatically translates the external end-of-line representation into newline characters. Upon output (i.e., with puts), the I/O system translates newlines to the external end-of-line representation. The default translation mode, auto, handles all the common cases automatically, but the -translation option provides explicit control over the end of line translations.
# The value associated with -translation is a single item for read-only and write-only channels. The value is a two-element list for read-write channels; the read translation mode is the first element of the list, and the write translation mode is the second element. As a convenience, when setting the translation mode for a read-write channel you can specify a single value that will apply to both reading and writing. When querying the translation mode of a read-write channel, a two-element list will always be returned. The following values are currently supported:

# auto
# As the input translation mode, auto treats any of newline (lf), carriage return (cr), or carriage return followed by a newline (crlf) as the end of line representation. The end of line representation can even change from line-to-line, and all cases are translated to a newline. As the output translation mode, auto chooses a platform specific representation; for sockets on all platforms Tcl chooses crlf, for all Unix flavors, it chooses lf, and for the various flavors of Windows it chooses crlf. The default setting for -translation is auto for both input and output.
# binary
# No end-of-line translations are performed. This is nearly identical to lf mode, except that in addition binary mode also sets the end-of-file character to the empty string (which disables it) and sets the encoding to binary (which disables encoding filtering). See the description of -eofchar and -encoding for more information.
# Internally, i.e. when it comes to the actual behaviour of the translator this value is identical to lf and is therefore reported as such when queried. Even if binary was used to set the translation.

# cr
# The end of a line in the underlying file or device is represented by a single carriage return character. As the input translation mode, cr mode converts carriage returns to newline characters. As the output translation mode, cr mode translates newline characters to carriage returns.
# crlf
# The end of a line in the underlying file or device is represented by a carriage return character followed by a linefeed character. As the input translation mode, crlf mode converts carriage-return-linefeed sequences to newline characters. As the output translation mode, crlf mode translates newline characters to carriage-return-linefeed sequences. This mode is typically used on Windows platforms and for network connections.
# lf
# The end of a line in the underlying file or device is represented by a single newline (linefeed) character. In this mode no translations occur during either input or output. This mode is typically used on UNIX platforms.

# set fp [open "|cmd.exe /c dir text.txt" r]
# set fp [open "|cmd.exe /c dir text.txt" r]
set fp [open "| echo haha" r]
set data [read $fp]
puts $data
# close $fp
if { [catch {close $fp} err] } {
       puts "Error: $err"
}


# read -nonewline channel
# read channel number
set fp [open /tmp/text.txt r]
set data [read $fp]
puts $data
if { [catch {close $fp} err] } {
       puts "Error: $err"
}

