.class public Ltw/com/chte/resource/RawResource;
.super Ljava/lang/Object;
.source "RawResource.java"


# static fields
.field private static instance:Ltw/com/chte/resource/RawResource;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltw/com/chte/resource/RawResource;
    .locals 1

    .line 12
    sget-object v0, Ltw/com/chte/resource/RawResource;->instance:Ltw/com/chte/resource/RawResource;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ltw/com/chte/resource/RawResource;

    invoke-direct {v0}, Ltw/com/chte/resource/RawResource;-><init>()V

    sput-object v0, Ltw/com/chte/resource/RawResource;->instance:Ltw/com/chte/resource/RawResource;

    .line 15
    :cond_0
    sget-object v0, Ltw/com/chte/resource/RawResource;->instance:Ltw/com/chte/resource/RawResource;

    return-object v0
.end method


# virtual methods
.method public getFileString(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "\\..*"

    const-string v1, ""

    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "raw"

    .line 43
    invoke-virtual {p2, p1, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 44
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getMusic(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "\\.mp3"

    const-string v1, ""

    .line 55
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "raw"

    .line 56
    invoke-virtual {p2, p1, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getTxt(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "\\.txt"

    const-string v1, ""

    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "raw"

    .line 30
    invoke-virtual {p2, p1, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
