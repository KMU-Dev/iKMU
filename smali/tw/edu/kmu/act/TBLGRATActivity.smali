.class public Ltw/edu/kmu/act/TBLGRATActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TBLGRATActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;,
        Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;,
        Ltw/edu/kmu/act/TBLGRATActivity$GetPreViewData;,
        Ltw/edu/kmu/act/TBLGRATActivity$GetGRATNextQu;,
        Ltw/edu/kmu/act/TBLGRATActivity$GetGRATFirstQu;,
        Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQuEx;,
        Ltw/edu/kmu/act/TBLGRATActivity$SendAnsQu;,
        Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLGRATActivity"


# instance fields
.field private alertDialog:Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;

.field private alertView:Landroid/widget/LinearLayout;

.field private bundle:Landroid/os/Bundle;

.field private countDownTime:Landroid/widget/TextView;

.field private ctHandler:Landroid/os/Handler;

.field private ctPeriodCount:I

.field final ctRunnable:Ljava/lang/Runnable;

.field private ctServerTime:Ljava/lang/String;

.field private examDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private examMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private imageUrl:Ljava/lang/String;

.field private isSendTp:Z

.field private phoneTimeDiff:J

.field private root1:Landroid/widget/LinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field selCorrect:Z

.field private tilte1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "https://etbl.kmu.edu.tw/tblapi/tbl/download?file="

    .line 76
    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->imageUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->phoneTimeDiff:J

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->isSendTp:Z

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->selCorrect:Z

    .line 1320
    new-instance v0, Ltw/edu/kmu/act/TBLGRATActivity$21;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLGRATActivity$21;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/TBLGRATActivity;)I
    .locals 0

    .line 58
    iget p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctPeriodCount:I

    return p0
.end method

.method static synthetic access$1010(Ltw/edu/kmu/act/TBLGRATActivity;)I
    .locals 2

    .line 58
    iget v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctPeriodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctPeriodCount:I

    return v0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/os/Bundle;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1400(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity;->parseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->examMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1902(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->examDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/widget/TextView;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->countDownTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/TBLGRATActivity;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctServerTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2102(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctServerTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Ltw/edu/kmu/act/TBLGRATActivity;)J
    .locals 2

    .line 58
    iget-wide v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->phoneTimeDiff:J

    return-wide v0
.end method

.method static synthetic access$2202(Ltw/edu/kmu/act/TBLGRATActivity;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->phoneTimeDiff:J

    return-wide p1
.end method

.method static synthetic access$2300(Ltw/edu/kmu/act/TBLGRATActivity;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLGRATActivity;->setCountDownTime()V

    return-void
.end method

.method static synthetic access$302(Ltw/edu/kmu/act/TBLGRATActivity;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->isSendTp:Z

    return p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/TBLGRATActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .line 112
    new-instance v0, Ltw/edu/kmu/act/TBLGRATActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLGRATActivity$1;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f080176

    .line 135
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLGRATActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    const v0, 0x7f0800b0

    .line 137
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLGRATActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->countDownTime:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->countDownTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801d3

    .line 140
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLGRATActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u610f\uff01\u6700\u5f8c\u4e00\u984c\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private parseMsg(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 223
    sget-object v3, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMsg start inputMsgType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "question"

    .line 228
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "questionType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    .line 229
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_0
    const-string v4, "question"

    .line 230
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "subQuOrder"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    sget-object v5, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subQuOrder is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "2"

    .line 234
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x5

    const/high16 v7, 0x43160000    # 150.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/16 v11, 0x11

    const/4 v12, 0x2

    const/4 v15, 0x1

    const/4 v10, -0x1

    const/4 v14, -0x2

    const/4 v13, 0x0

    const/high16 v9, 0x40a00000    # 5.0f

    if-eqz v5, :cond_12

    .line 235
    iput-boolean v13, v1, Ltw/edu/kmu/act/TBLGRATActivity;->selCorrect:Z

    .line 236
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    .line 237
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 240
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    .line 241
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 244
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 245
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 247
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 248
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 249
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 250
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 251
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 253
    invoke-virtual {v2, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 254
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 255
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x777778

    .line 256
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 259
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v2, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 261
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "question"

    .line 262
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 265
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 269
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "question"

    .line 272
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 273
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$3;

    invoke-direct {v2, v1, v7}, Ltw/edu/kmu/act/TBLGRATActivity$3;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v8, v12, [Ljava/lang/String;

    aput-object v6, v8, v13

    aput-object v7, v8, v15

    invoke-virtual {v2, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 289
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v5, :cond_1

    const-string v5, "Click image to enlarge"

    goto :goto_0

    :cond_1
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 293
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const-string v2, "question"

    .line 297
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    new-instance v5, Landroid/widget/RadioGroup;

    invoke-direct {v5, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v6, "radioGroup"

    .line 299
    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v6, "question"

    .line 302
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "optionList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 303
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 304
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 305
    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const/high16 v12, 0x41200000    # 10.0f

    .line 307
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    .line 308
    invoke-virtual {v9, v12, v13, v13, v13}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 310
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioButton"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 312
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showOrder"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "optVal"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "optKey"

    .line 313
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f08004e

    invoke-virtual {v9, v12, v11}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    const-string v11, "selFilled"

    .line 314
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 315
    invoke-virtual {v9, v13}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v11, "selCorrect"

    .line 317
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/high16 v12, 0x42f00000    # 120.0f

    if-eqz v11, :cond_3

    .line 318
    iput-boolean v15, v1, Ltw/edu/kmu/act/TBLGRATActivity;->selCorrect:Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f070170

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 321
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v1, v11, v13, v12}, Ltw/edu/kmu/act/TBLGRATActivity;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 323
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    .line 325
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 327
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f070171

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 328
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v1, v11, v13, v12}, Ltw/edu/kmu/act/TBLGRATActivity;->zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 330
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    .line 332
    invoke-virtual {v9, v11}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_4
    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const-string v11, "optKey"

    .line 336
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 338
    invoke-virtual {v9}, Landroid/widget/RadioButton;->getId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->check(I)V

    :cond_5
    const/16 v11, 0x11

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 341
    :cond_6
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, -0x10000

    .line 344
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    const-string v6, "\u9078\u64c7\u9078\u9805\u5f8c\u6309\u4e0b\u78ba\u5b9a"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 347
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x40a00000    # 5.0f

    .line 348
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 349
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 350
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    const/high16 v7, 0x41a00000    # 20.0f

    .line 351
    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v6, "question"

    .line 354
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "selFinish"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 355
    iget-object v6, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    :cond_7
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004e

    .line 359
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setId(I)V

    .line 360
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v6, :cond_8

    const-string v6, "Pre"

    goto :goto_3

    :cond_8
    const-string v6, "\u4e0a\u4e00\u984c"

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 362
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 363
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x40a00000    # 5.0f

    .line 365
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 366
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 367
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 368
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 369
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004e

    .line 372
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 373
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v7, :cond_9

    const-string v7, "Confirm"

    goto :goto_4

    :cond_9
    const-string v7, "\u78ba\u5b9a"

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 375
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 376
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 377
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v8, 0x40a00000    # 5.0f

    .line 378
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 379
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 380
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 381
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 382
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08004e

    .line 386
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 387
    iget-boolean v8, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v8, :cond_a

    const-string v8, "Next"

    goto :goto_5

    :cond_a
    const-string v8, "\u4e0b\u4e00\u984c"

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v8, 0x7f0700f2

    .line 389
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 390
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v8, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 391
    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v9, 0x40a00000    # 5.0f

    .line 392
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 393
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 394
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 395
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 396
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08004e

    .line 399
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 400
    iget-boolean v9, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v9, :cond_b

    const-string v9, "PreView"

    goto :goto_6

    :cond_b
    const-string v9, "\u9810\u89bd"

    :goto_6
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v9, 0x7f0700f2

    .line 402
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 403
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42480000    # 50.0f

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v11, 0x40a00000    # 5.0f

    .line 405
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 406
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 407
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 408
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 409
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v12, 0x7f08005b

    .line 412
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    .line 413
    iget-boolean v12, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v12, :cond_c

    const-string v12, "Send"

    goto :goto_7

    :cond_c
    const-string v12, "\u9001\u51fa\u4f5c\u7b54"

    :goto_7
    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v10, 0x7f0700f2

    .line 415
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v10, 0x11

    .line 416
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 417
    invoke-virtual {v11, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 419
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v12, 0x40a00000    # 5.0f

    .line 421
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v2, v13, v10, v14, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 422
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v7, v13, v10, v14, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 423
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v13, v10, v14, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 424
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v11, v13, v10, v14, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 425
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v6, v13, v10, v12, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v10, "question"

    .line 427
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v12, "flagPrev"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 428
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_d
    const-string v10, "question"

    .line 431
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v12, "flagAnsEx"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 432
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    const-string v10, "question"

    .line 435
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v12, "flagAfter"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 436
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_f
    const-string v10, "question"

    .line 438
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v12, "finalQu"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 439
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v10, "question"

    .line 440
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "selFinish"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 441
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    :cond_10
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :cond_11
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 448
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v9, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 453
    new-instance v3, Ltw/edu/kmu/act/TBLGRATActivity$4;

    invoke-direct {v3, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$4;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$5;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$5;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$6;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$6;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$7;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$7;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$8;

    invoke-direct {v2, v1, v4, v5}, Ltw/edu/kmu/act/TBLGRATActivity$8;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;Landroid/widget/RadioGroup;)V

    invoke-virtual {v11, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_15

    :cond_12
    const-string v5, "3"

    .line 545
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 547
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    .line 548
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 549
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 551
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    .line 552
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 555
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 556
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x40a00000    # 5.0f

    .line 558
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 559
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 560
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 561
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 562
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x2

    .line 564
    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 565
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 566
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x777778

    .line 567
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 570
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 571
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x2

    const/high16 v6, 0x41a00000    # 20.0f

    .line 572
    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "question"

    .line 573
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 576
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 579
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 580
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "question"

    .line 583
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 584
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 587
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$9;

    invoke-direct {v2, v1, v7}, Ltw/edu/kmu/act/TBLGRATActivity$9;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v15

    invoke-virtual {v2, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 600
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 602
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v5, :cond_13

    const-string v5, "Click image to enlarge"

    goto :goto_8

    :cond_13
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_8
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 605
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 606
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_14
    const-string v2, "question"

    .line 611
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_"

    .line 612
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v5, "question"

    .line 614
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "optionList"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 615
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_17

    .line 616
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 617
    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 618
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkBox"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 619
    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 620
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showOrder"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "optVal"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "optKey"

    .line 621
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f08004e

    invoke-virtual {v8, v11, v9}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const/4 v9, 0x0

    .line 622
    :goto_a
    array-length v11, v2

    if-ge v9, v11, :cond_16

    const-string v11, "optKey"

    .line 623
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 624
    invoke-virtual {v8, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 627
    :cond_16
    iget-object v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9

    .line 630
    :cond_17
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004e

    .line 631
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setId(I)V

    .line 632
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v6, :cond_18

    const-string v6, "Pre"

    goto :goto_b

    :cond_18
    const-string v6, "\u4e0a\u4e00\u984c"

    :goto_b
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 634
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 635
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 636
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x40a00000    # 5.0f

    .line 637
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 638
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 639
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 640
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 641
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004e

    .line 644
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 645
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v7, :cond_19

    const-string v7, "Next"

    goto :goto_c

    :cond_19
    const-string v7, "\u4e0b\u4e00\u984c"

    :goto_c
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 647
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 648
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 649
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v8, 0x40a00000    # 5.0f

    .line 650
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 651
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 652
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 653
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 654
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08004e

    .line 657
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 658
    iget-boolean v8, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v8, :cond_1a

    const-string v8, "PreView"

    goto :goto_d

    :cond_1a
    const-string v8, "\u9810\u89bd"

    :goto_d
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {v7, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v8, 0x7f0700f2

    .line 660
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 661
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 662
    iput v15, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v9, 0x40a00000    # 5.0f

    .line 663
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 664
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 665
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 666
    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 667
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v11, 0x7f08005b

    .line 670
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setId(I)V

    .line 671
    iget-boolean v11, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v11, :cond_1b

    const-string v11, "Send"

    goto :goto_e

    :cond_1b
    const-string v11, "\u9001\u51fa\u4f5c\u7b54"

    :goto_e
    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v10, 0x7f0700f2

    .line 673
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v10, 0x11

    .line 674
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 675
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 677
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v11, 0x40a00000    # 5.0f

    .line 679
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v2, v12, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 680
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v6, v12, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 681
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v7, v12, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 682
    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v11}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v9, v12, v10, v11, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v10, "question"

    .line 684
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagPrev"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 685
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1c
    const-string v10, "question"

    .line 687
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagAfter"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 688
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1d
    const-string v10, "question"

    .line 690
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "finalQu"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 691
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 693
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    :cond_1e
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 699
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v8, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 704
    new-instance v3, Ltw/edu/kmu/act/TBLGRATActivity$10;

    invoke-direct {v3, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$10;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$11;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$11;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$12;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$12;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 793
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$13;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLGRATActivity$13;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_15

    :cond_1f
    const-string v5, "4"

    .line 825
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 827
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    .line 828
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 829
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 831
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    .line 832
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 835
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 836
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 837
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x40a00000    # 5.0f

    .line 838
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 839
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 840
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 841
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 842
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v5, 0x41600000    # 14.0f

    const/4 v6, 0x2

    .line 844
    invoke-virtual {v2, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 845
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 846
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x777778

    .line 847
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 850
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 851
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x2

    const/high16 v6, 0x41a00000    # 20.0f

    .line 852
    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "question"

    .line 853
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 856
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 858
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 859
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 860
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Ltw/edu/kmu/act/TBLGRATActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "question"

    .line 863
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "imgFile"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 864
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 867
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$14;

    invoke-direct {v2, v1, v8}, Ltw/edu/kmu/act/TBLGRATActivity$14;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x0

    invoke-direct {v2, v5, v11, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v9, v11

    aput-object v8, v9, v15

    invoke-virtual {v2, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 880
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 881
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 882
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v5, :cond_20

    const-string v5, "Click image to enlarge"

    goto :goto_f

    :cond_20
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_f
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 884
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 885
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 886
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 887
    iget-object v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_21
    const-string v2, "question"

    .line 890
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 893
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40a00000    # 5.0f

    .line 894
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 895
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 896
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 897
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 898
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "edit1"

    .line 900
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v2, -0x1000000

    .line 901
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 902
    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 903
    iget-boolean v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v2, :cond_22

    const-string v2, "Please answer"

    goto :goto_10

    :cond_22
    const-string v2, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_10
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v2, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 906
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08004e

    .line 907
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setId(I)V

    .line 908
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v5, :cond_23

    const-string v5, "Pre"

    goto :goto_11

    :cond_23
    const-string v5, "\u4e0a\u4e00\u984c"

    :goto_11
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 909
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v5, 0x7f0700f2

    .line 910
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 911
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 912
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x40a00000    # 5.0f

    .line 913
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 914
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 915
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 916
    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 917
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004e

    .line 920
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 921
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v6, :cond_24

    const-string v6, "Next"

    goto :goto_12

    :cond_24
    const-string v6, "\u4e0b\u4e00\u984c"

    :goto_12
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 923
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 924
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 925
    iput v15, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x40a00000    # 5.0f

    .line 926
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 927
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 928
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 929
    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 930
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004e

    .line 933
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 934
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v7, :cond_25

    const-string v7, "PreView"

    goto :goto_13

    :cond_25
    const-string v7, "\u9810\u89bd"

    :goto_13
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 936
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 937
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v14, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 938
    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v8, 0x40a00000    # 5.0f

    .line 939
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 940
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 941
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 942
    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 943
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08005b

    .line 946
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 947
    iget-boolean v9, v1, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v9, :cond_26

    const-string v9, "Send"

    goto :goto_14

    :cond_26
    const-string v9, "\u9001\u51fa\u4f5c\u7b54"

    :goto_14
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 948
    invoke-virtual {v8, v10}, Landroid/widget/Button;->setTextColor(I)V

    const v9, 0x7f0700f2

    .line 949
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v9, 0x11

    .line 950
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 951
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 952
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 953
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v10, 0x40a00000    # 5.0f

    .line 955
    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v2, v11, v9, v12, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 956
    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v5, v11, v9, v12, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 957
    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v6, v11, v9, v12, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 958
    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v8, v11, v9, v10, v9}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v9, "question"

    .line 960
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "flagPrev"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 961
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_27
    const-string v9, "question"

    .line 963
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "flagAfter"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 964
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_28
    const-string v9, "question"

    .line 966
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "finalQu"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 967
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 968
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 969
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->tilte1:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    :cond_29
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 973
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 974
    iget-object v3, v1, Ltw/edu/kmu/act/TBLGRATActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/act/TBLGRATActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 978
    new-instance v3, Ltw/edu/kmu/act/TBLGRATActivity$15;

    invoke-direct {v3, v1, v4}, Ltw/edu/kmu/act/TBLGRATActivity$15;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$16;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLGRATActivity$16;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$17;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLGRATActivity$17;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$18;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLGRATActivity$18;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1042
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    :goto_15
    return-void
.end method

.method private setCountDownTime()V
    .locals 7

    .line 175
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "setCountDownTime start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "etime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v1, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneTimeDiff is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ltw/edu/kmu/act/TBLGRATActivity;->phoneTimeDiff:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctServerTime:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0, v2}, Ltw/edu/kmu/act/TBLGRATActivity;->dateDiff(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 183
    div-long v2, v0, v2

    .line 184
    sget-object v4, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctPeriodCount:I

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctHandler:Landroid/os/Handler;

    .line 188
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "diffSeconds is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public buttonEffect(Landroid/widget/Button;)V
    .locals 1

    .line 148
    new-instance v0, Ltw/edu/kmu/act/TBLGRATActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLGRATActivity$2;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dateDiff(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1411
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 v0, 0x0

    sub-long v0, p3, p1

    const-wide/16 p1, 0x3e8

    .line 1412
    div-long p1, v0, p1

    const-wide/32 p1, 0xea60

    .line 1413
    div-long p1, v0, p1

    const-wide/32 p1, 0x36ee80

    .line 1414
    div-long p1, v0, p1

    const-wide/32 p1, 0x5265c00

    .line 1415
    div-long p1, v0, p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1418
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public dateDiff4Phone(Ljava/lang/String;)J
    .locals 8

    .line 1384
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 1386
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1387
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1389
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1390
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 1391
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 1392
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 1393
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 1394
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1397
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 211
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 212
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 213
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 214
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00d9

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1964
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u78ba\u5b9a\u8981\u96e2\u958b\u55ce?"

    .line 1966
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012a

    .line 1967
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TBLGRATActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$23;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLGRATActivity$23;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012f

    .line 1976
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TBLGRATActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLGRATActivity$22;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLGRATActivity$22;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1982
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 97
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->bundle:Landroid/os/Bundle;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TBL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "qutype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLGRATActivity;->initView()V

    .line 103
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLGRATActivity;->initHandler()V

    .line 105
    new-instance p1, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    const/4 v0, 0x1

    .line 106
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLGRATActivity$GetServerTime;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 2015
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 2018
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLGRATActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2022
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1989
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 2001
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iget-boolean v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->isSendTp:Z

    if-eqz v0, :cond_0

    .line 2003
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u4e2d\u9014\u96e2\u958b\u4e86\u5594"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    new-instance v0, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$1;)V

    const/4 v1, 0x0

    .line 2005
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLGRATActivity$SendBlockTp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2007
    :cond_0
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u7528sendBlockTp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    :goto_0
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1995
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1996
    iput-boolean v0, p0, Ltw/edu/kmu/act/TBLGRATActivity;->isSendTp:Z

    .line 1997
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onResume()V

    return-void
.end method

.method public parseExamMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1794
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1795
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1796
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1797
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1799
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1804
    sget-object v1, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseExamMap Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1817
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1818
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1819
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1820
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1821
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1822
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1823
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1824
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1825
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1827
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1833
    sget-object p2, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseList Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public show99View()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1051
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#FFFFFF"

    .line 1053
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1055
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1056
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x7f0700f4

    .line 1057
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1060
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v7, 0x2

    .line 1061
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v8, -0x1000000

    .line 1062
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1063
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Ltw/edu/kmu/act/TBLGRATActivity;->examMap:Ljava/util/HashMap;

    const-string v11, "ansTime"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/high16 v10, 0x41a00000    # 20.0f

    .line 1065
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v11, 0x0

    .line 1066
    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1068
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1069
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1070
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1071
    iget-object v12, v0, Ltw/edu/kmu/act/TBLGRATActivity;->examMap:Ljava/util/HashMap;

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v14, :cond_0

    const-string v14, "teafEnam"

    goto :goto_0

    :cond_0
    const-string v14, "teafNam"

    :goto_0
    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLGRATActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0700f9

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1073
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v12, v13, v13, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1074
    invoke-virtual {v9, v12, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1076
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1077
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1078
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1079
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1080
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1082
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1083
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Ltw/edu/kmu/act/TBLGRATActivity;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x32

    div-int/lit8 v10, v10, 0x64

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    .line 1084
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1085
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1086
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1087
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1088
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1089
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Q:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Ltw/edu/kmu/act/TBLGRATActivity;->examMap:Ljava/util/HashMap;

    const-string v15, "description"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1092
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v15, v0, Ltw/edu/kmu/act/TBLGRATActivity;->display:Landroid/view/Display;

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v15

    mul-int/lit8 v15, v15, 0x1e

    div-int/lit8 v15, v15, 0x64

    invoke-direct {v14, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1093
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1094
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 1096
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1097
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1098
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v14, :cond_1

    const-string v14, "Score"

    goto :goto_1

    :cond_1
    const-string v14, "\u5f97\u5206:"

    :goto_1
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1101
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1102
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1103
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1104
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 1107
    :goto_2
    iget-object v5, v0, Ltw/edu/kmu/act/TBLGRATActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 1108
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1109
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1110
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1111
    iget-object v10, v0, Ltw/edu/kmu/act/TBLGRATActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v14, "questionType"

    .line 1112
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1113
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1114
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    invoke-virtual {v15, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "description"

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1119
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "timer"

    .line 1120
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1121
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x5

    .line 1122
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v15, 0x40a00000    # 5.0f

    .line 1123
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1124
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1125
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1126
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1127
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1129
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1130
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v13, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v13, :cond_2

    const-string v13, "  Score"

    goto :goto_3

    :cond_2
    const-string v13, "  \u5f97\u5206:"

    :goto_3
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "scoreDesc"

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0700f6

    .line 1133
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1134
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "imgPath"

    .line 1136
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1137
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1138
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v13, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 1139
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1140
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1142
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Ltw/edu/kmu/act/TBLGRATActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    .line 1144
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 1145
    new-instance v15, Ltw/edu/kmu/act/TBLGRATActivity$19;

    invoke-direct {v15, v0, v2}, Ltw/edu/kmu/act/TBLGRATActivity$19;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    new-instance v15, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-direct {v15, v4, v11, v0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v11, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v11, v16

    const/4 v13, 0x1

    aput-object v2, v11, v13

    invoke-virtual {v15, v11}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1158
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1159
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1160
    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v4, :cond_3

    const-string v4, "Click image to enlarge"

    goto :goto_4

    :cond_3
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1162
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1163
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1164
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1165
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_4
    const/4 v13, 0x1

    :goto_5
    const-string v2, "2"

    .line 1168
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1170
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGroup"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 1174
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1175
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1176
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1177
    new-instance v11, Landroid/widget/RadioButton;

    invoke-direct {v11, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1178
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "radioButton"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 1179
    invoke-virtual {v11, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1180
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f08004e

    const-string v15, "optKey"

    .line 1181
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    const/4 v14, 0x0

    .line 1182
    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v14, "correct"

    .line 1183
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1184
    invoke-virtual {v2, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1187
    :cond_5
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1188
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1189
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1190
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1191
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1192
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1193
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1194
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v4, :cond_6

    const-string v4, "My ans:"

    goto :goto_7

    :cond_6
    const-string v4, "\u6211\u7684\u7b54\u6848:"

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "myAnswer"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_7
    const-string v2, "3"

    .line 1200
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1203
    new-instance v2, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1204
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 1205
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1206
    new-instance v11, Landroid/widget/CheckBox;

    invoke-direct {v11, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1207
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkBox"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1208
    invoke-virtual {v11, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1209
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "optKey"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "optVal"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f08004e

    const-string v15, "optKey"

    .line 1210
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v14, "correct"

    .line 1211
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v6, 0x0

    .line 1212
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1213
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 1215
    :cond_8
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1216
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1217
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1218
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1219
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1220
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1221
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v4, :cond_9

    const-string v4, "My ans:"

    goto :goto_9

    :cond_9
    const-string v4, "\u6211\u7684\u7b54\u6848:"

    :goto_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "myAnswer"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_a
    const-string v2, "4"

    .line 1227
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1229
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1230
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1231
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1232
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1233
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1234
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1235
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 1236
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v4, "edit1"

    .line 1237
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextColor(I)V

    const v4, 0x7f0700f5

    .line 1239
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v4, "myAnswer"

    .line 1241
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1244
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1245
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1246
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1247
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1248
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1249
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1250
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1251
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/TBLGRATActivity;->isEnglish:Z

    if-eqz v6, :cond_b

    const-string v6, "Right ans:"

    goto :goto_a

    :cond_b
    const-string v6, "\u6a19\u6e96\u7b54\u6848:"

    :goto_a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "stdAnswer"

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, ""

    const-string v6, "stdAnswer"

    .line 1254
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1255
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v3, 0x0

    .line 1259
    :cond_d
    :goto_c
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v9

    const/4 v2, 0x1

    const v4, 0x7f0700f4

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1262
    :cond_e
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1263
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1266
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1267
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1269
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700f3

    .line 1270
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1271
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 1272
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1273
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1276
    new-instance v3, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;

    invoke-direct {v3, v0}, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;)V

    const-string v4, "99"

    .line 1277
    invoke-virtual {v3, v0, v1, v4}, Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 1278
    new-instance v1, Ltw/edu/kmu/act/TBLGRATActivity$20;

    invoke-direct {v1, v0, v3}, Ltw/edu/kmu/act/TBLGRATActivity$20;-><init>(Ltw/edu/kmu/act/TBLGRATActivity;Ltw/edu/kmu/act/TBLGRATActivity$ViewDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method zoomDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 194
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 195
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 197
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable width  is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Ltw/edu/kmu/act/TBLGRATActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable input w  is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLGRATActivity;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p2

    int-to-float p2, v3

    div-float/2addr p1, p2

    int-to-float p2, p3

    int-to-float p3, v4

    div-float/2addr p2, p3

    .line 204
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 206
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 207
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
