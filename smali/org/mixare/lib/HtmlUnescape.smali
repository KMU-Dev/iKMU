.class public Lorg/mixare/lib/HtmlUnescape;
.super Ljava/lang/Object;
.source "HtmlUnescape.java"


# static fields
.field private static htmlEntities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&amp;"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&agrave;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Agrave;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&acirc;"

    const-string v2, "\u74bd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&auml;"

    const-string v2, "\u74e3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Auml;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Acirc;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&aring;"

    const-string v2, "\u7587"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Aring;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&aelig;"

    const-string v2, "\u7586"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&AElig;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ccedil;"

    const-string v2, "\u765f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ccedil;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&eacute;"

    const-string v2, "\u77c7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Eacute;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&egrave;"

    const-string v2, "\u7661"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Egrave;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ecirc;"

    const-string v2, "\u7919"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ecirc;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&euml;"

    const-string v2, "\u79b1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Euml;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&iuml;"

    const-string v2, "\u7c3f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Iuml;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ocirc;"

    const-string v2, "\u7e6b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ocirc;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ouml;"

    const-string v2, "\u7e79"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ouml;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&oslash;"

    const-string v2, "\u7e6a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Oslash;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&szlig;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ugrave;"

    const-string v2, "\u7f85"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ugrave;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&ucirc;"

    const-string v2, "\u7fb6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Ucirc;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&uuml;"

    const-string v2, "\u7fb9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&Uuml;"

    const-string v2, "\ufffd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&nbsp;"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&copy;"

    const-string v2, "\u00a9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&reg;"

    const-string v2, "\u00ae"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    const-string v1, "&euro;"

    const-string v2, "\u20a0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unescapeHTML(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, "&"

    .line 76
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const-string v0, ";"

    .line 78
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v2, Lorg/mixare/lib/HtmlUnescape;->htmlEntities:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    .line 86
    invoke-static {p0, p1}, Lorg/mixare/lib/HtmlUnescape;->unescapeHTML(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method
