.class public Ltw/edu/kmu/act/PoiContentActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "PoiContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/PoiContentActivity$GetServerData;,
        Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PoiContentActivity"


# instance fields
.field private final CLOSE_PROGRESSBAR:I

.field private bundle:Landroid/os/Bundle;

.field private display:Landroid/view/Display;

.field private gallery:Landroid/widget/Gallery;

.field private globalVariable:Ltw/edu/kmu/act/MyApplication;

.field private handler:Landroid/os/Handler;

.field private myImage:[Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/16 v0, 0xa

    .line 60
    iput v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->CLOSE_PROGRESSBAR:I

    .line 306
    new-instance v0, Ltw/edu/kmu/act/PoiContentActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/PoiContentActivity$3;-><init>(Ltw/edu/kmu/act/PoiContentActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Bundle;
    .locals 0

    .line 48
    iget-object p0, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/PoiContentActivity;)Ltw/edu/kmu/act/MyApplication;
    .locals 0

    .line 48
    iget-object p0, p0, Ltw/edu/kmu/act/PoiContentActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/PoiContentActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltw/edu/kmu/act/PoiContentActivity;->initText()V

    return-void
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/PoiContentActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltw/edu/kmu/act/PoiContentActivity;->setImage()V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/PoiContentActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getImage()V

    return-void
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/PoiContentActivity;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Ltw/edu/kmu/act/PoiContentActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Ltw/edu/kmu/act/PoiContentActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addBenefitView()V
    .locals 7

    .line 236
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "benefitList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/PoiContentActivity;->parseBenefitList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const v2, 0x7f08010e

    .line 238
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 239
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 240
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {p0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 241
    invoke-static {p0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 242
    invoke-static {p0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 243
    invoke-static {p0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v5, 0x41a00000    # 20.0f

    .line 244
    invoke-static {p0, v5}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 245
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "benefitName"

    .line 247
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 248
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const v4, 0x7f070078

    .line 249
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    .line 250
    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    const-string v4, "#ff00ff"

    .line 251
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 252
    new-instance v4, Ltw/edu/kmu/act/PoiContentActivity$2;

    invoke-direct {v4, p0, v1}, Ltw/edu/kmu/act/PoiContentActivity$2;-><init>(Ltw/edu/kmu/act/PoiContentActivity;Ljava/util/HashMap;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getImage()V
    .locals 14

    .line 370
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    array-length v1, v0

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 375
    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 376
    invoke-static {}, Ltw/edu/kmu/resource/ImageResource;->getInstance()Ltw/edu/kmu/resource/ImageResource;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 384
    :goto_0
    array-length v2, v0

    if-ge v12, v2, :cond_1

    .line 385
    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "imageUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v3, "imageUrl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    .line 388
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 389
    iget-object v13, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v5

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v2, v11

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmapFromServer(Landroid/content/res/Resources;Ljava/lang/String;IIILjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v13, v12

    goto :goto_1

    .line 393
    :cond_0
    iget-object v13, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v3, v0, v12

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v11

    move-object v4, v1

    move-object v5, v10

    invoke-virtual/range {v2 .. v9}, Ltw/edu/kmu/resource/ImageResource;->getLimitedBitmap(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v13, v12

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initBtn()V
    .locals 4

    const v0, 0x7f080040

    .line 149
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 151
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-boolean v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, " Path "

    goto :goto_0

    :cond_0
    const-string v1, " \u8def\u5f91\u898f\u5283 "

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v1, Ltw/edu/kmu/act/PoiContentActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/PoiContentActivity$1;-><init>(Ltw/edu/kmu/act/PoiContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initText()V
    .locals 7

    const v0, 0x7f0801b4

    .line 183
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    .line 184
    new-instance v0, Ltw/edu/kmu/view/KWebViewClient;

    invoke-direct {v0, p0}, Ltw/edu/kmu/view/KWebViewClient;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 186
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><body><table><tr><td><span style=\"color:green;font-size:24px \"><b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b></span></td></tr><tr><td><span style=\"font-size: 20px\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "description"

    .line 193
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&lt;"

    const-string v5, "<"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&gt;"

    const-string v5, ">"

    .line 194
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&amp;"

    const-string v5, "&"

    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</span></td></tr></table></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "99"

    .line 198
    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><body><table><tr><td><span style=\"color:green;font-size:24px \"><b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b></span></td></tr><tr><td><span style=\"color:blue;font-size:20px \"><b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "tel"

    .line 202
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b></span></td></tr><tr><td><span style=\"color:blue;font-size:20px \"><b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "address"

    .line 203
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</b></span></td></tr><tr><td><span style=\"font-size: 20px\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "description"

    .line 206
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&lt;"

    const-string v5, "<"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&gt;"

    const-string v5, ">"

    .line 207
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&amp;"

    const-string v5, "&"

    .line 208
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</span></td></tr></table></body></html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://mbms.kmu.edu.tw:8080/KmuWS/ws/cdLogStore?uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v3, v3, Ltw/edu/kmu/act/MyApplication;->regId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&brandid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    const-string v4, "serialNo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p0, v2}, Ltw/edu/kmu/act/PoiContentActivity;->addLogByFuncName(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Ltw/edu/kmu/act/PoiContentActivity;->addBenefitView()V

    return-void
.end method

.method private setImage()V
    .locals 3

    .line 401
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 403
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x19

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 404
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->gallery:Landroid/widget/Gallery;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 406
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->gallery:Landroid/widget/Gallery;

    new-instance v1, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;

    iget-object v2, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, p0, v2}, Ltw/edu/kmu/act/PoiContentActivity$ImageAdapter;-><init>(Ltw/edu/kmu/act/PoiContentActivity;Landroid/content/Context;[Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method


# virtual methods
.method public addLogByFuncName(Ljava/lang/String;)V
    .locals 8

    .line 224
    sget-object v0, Ltw/edu/kmu/act/PoiContentActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLogByFuncName start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 227
    new-instance v0, Ltw/edu/kmu/tool/UploadDataUseRest;

    const-string v3, "get"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Ltw/edu/kmu/tool/UploadDataUseRest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 228
    new-array p1, p1, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v0, p1}, Ltw/edu/kmu/tool/UploadDataUseRest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    sget-object p1, Ltw/edu/kmu/act/PoiContentActivity;->TAG:Ljava/lang/String;

    const-string v0, "addCountFuncName end "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00af

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->bundle:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/edu/kmu/act/MyApplication;

    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    .line 73
    invoke-virtual {p0}, Ltw/edu/kmu/act/PoiContentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    const p1, 0x7f0800e9

    .line 77
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Gallery;

    iput-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->gallery:Landroid/widget/Gallery;

    .line 79
    invoke-direct {p0}, Ltw/edu/kmu/act/PoiContentActivity;->initBtn()V

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 82
    new-instance p1, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;-><init>(Ltw/edu/kmu/act/PoiContentActivity;Ltw/edu/kmu/act/PoiContentActivity$1;)V

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/PoiContentActivity$GetServerData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 412
    sget-object v0, Ltw/edu/kmu/act/PoiContentActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 414
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 415
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Ltw/edu/kmu/act/PoiContentActivity;->myImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f080168

    .line 421
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 422
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 423
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 424
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    return-void
.end method

.method public parseBenefitList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 282
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 283
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 284
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 285
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 289
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 291
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    sget-object v1, Ltw/edu/kmu/act/PoiContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseBenefitList Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f08022e

    .line 133
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Ltw/edu/kmu/act/PoiContentActivity;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x19

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f080040

    .line 137
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/PoiContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v0, 0x8

    .line 138
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
