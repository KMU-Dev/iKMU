.class public Ltw/edu/kmu/act/TBLActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "TBLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/TBLActivity$SendBlockTp;,
        Ltw/edu/kmu/act/TBLActivity$GetServerTime;,
        Ltw/edu/kmu/act/TBLActivity$GetPreViewData;,
        Ltw/edu/kmu/act/TBLActivity$GetIRATNextQu;,
        Ltw/edu/kmu/act/TBLActivity$GetIRATFirstQu;,
        Ltw/edu/kmu/act/TBLActivity$SendAnsQu;,
        Ltw/edu/kmu/act/TBLActivity$ViewDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBLActivity"


# instance fields
.field private alertDialog:Ltw/edu/kmu/act/TBLActivity$ViewDialog;

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

.field private tilte1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "https://etbl.kmu.edu.tw/tblapi/tbl/download?file="

    .line 69
    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->imageUrl:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Ltw/edu/kmu/act/TBLActivity;->phoneTimeDiff:J

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    .line 1164
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$20;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLActivity$20;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/TBLActivity;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->ctHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/TBLActivity;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/TBLActivity;)Landroid/os/Bundle;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/TBLActivity;->parseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Ltw/edu/kmu/act/TBLActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity;->examMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1702(Ltw/edu/kmu/act/TBLActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity;->examDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Ltw/edu/kmu/act/TBLActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->ctServerTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity;->ctServerTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/TBLActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->countDownTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Ltw/edu/kmu/act/TBLActivity;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Ltw/edu/kmu/act/TBLActivity;->phoneTimeDiff:J

    return-wide v0
.end method

.method static synthetic access$2002(Ltw/edu/kmu/act/TBLActivity;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Ltw/edu/kmu/act/TBLActivity;->phoneTimeDiff:J

    return-wide p1
.end method

.method static synthetic access$2100(Ltw/edu/kmu/act/TBLActivity;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLActivity;->setCountDownTime()V

    return-void
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/TBLActivity;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    return p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/TBLActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/TBLActivity;)I
    .locals 0

    .line 51
    iget p0, p0, Ltw/edu/kmu/act/TBLActivity;->ctPeriodCount:I

    return p0
.end method

.method static synthetic access$910(Ltw/edu/kmu/act/TBLActivity;)I
    .locals 2

    .line 51
    iget v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctPeriodCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ltw/edu/kmu/act/TBLActivity;->ctPeriodCount:I

    return v0
.end method

.method private initHandler()V
    .locals 1

    .line 103
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLActivity$1;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f080169

    .line 126
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    const v0, 0x7f0800a5

    .line 128
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->countDownTime:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->countDownTime:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801c5

    .line 131
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/TBLActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const-string v1, "\u6ce8\u610f\uff01\u6700\u5f8c\u4e00\u984c\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private parseMsg(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 186
    sget-object v3, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseMsg start inputMsgType is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "question"

    .line 191
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "questionType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    .line 192
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

    if-eqz v4, :cond_24

    :cond_0
    const-string v4, "question"

    .line 193
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "subQuOrder"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    sget-object v5, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subQuOrder is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "2"

    .line 197
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    const v7, -0x777778

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v9, 0x5

    const/high16 v10, 0x43160000    # 150.0f

    const/4 v13, 0x2

    const/4 v11, 0x1

    const/4 v15, -0x2

    const/4 v14, -0x1

    const/high16 v12, 0x40a00000    # 5.0f

    if-eqz v5, :cond_c

    .line 198
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    .line 199
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 202
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    .line 203
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 206
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 207
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 208
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 209
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 210
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 212
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 213
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 215
    invoke-virtual {v2, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 217
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 221
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v2, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "question"

    .line 224
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 227
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 230
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 231
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/act/TBLActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "question"

    .line 234
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 235
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 236
    iput-boolean v2, v1, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    .line 237
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$3;

    invoke-direct {v2, v1, v7}, Ltw/edu/kmu/act/TBLActivity$3;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v5, v8, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v8, v13, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v11

    invoke-virtual {v2, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 250
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v5, :cond_1

    const-string v5, "Click image to enlarge"

    goto :goto_0

    :cond_1
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 253
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 254
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const-string v2, "question"

    .line 258
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v5, Landroid/widget/RadioGroup;

    invoke-direct {v5, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const-string v6, "radioGroup"

    .line 260
    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    const-string v6, "question"

    .line 263
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "optionList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 265
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 266
    new-instance v9, Landroid/widget/RadioButton;

    invoke-direct {v9, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "radioButton"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v9, v14}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 269
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "showOrder"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "optVal"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "optKey"

    .line 270
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const v13, 0x7f08004f

    invoke-virtual {v9, v13, v10}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    .line 271
    invoke-virtual {v5, v9}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    const-string v10, "optKey"

    .line 272
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 274
    invoke-virtual {v9}, Landroid/widget/RadioButton;->getId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 277
    :cond_4
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004f

    .line 279
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setId(I)V

    .line 280
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v6, :cond_5

    const-string v6, "Pre"

    goto :goto_2

    :cond_5
    const-string v6, "\u4e0a\u4e00\u984c"

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v2, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 282
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 283
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 284
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 286
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 287
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 288
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 289
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 290
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004f

    .line 294
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 295
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v7, :cond_6

    const-string v7, "Next"

    goto :goto_3

    :cond_6
    const-string v7, "\u4e0b\u4e00\u984c"

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 297
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 298
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 299
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 300
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 301
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 302
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 303
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 304
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 305
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08004f

    .line 308
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 309
    iget-boolean v8, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v8, :cond_7

    const-string v8, "PreView"

    goto :goto_4

    :cond_7
    const-string v8, "\u9810\u89bd"

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v7, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v8, 0x7f0700f2

    .line 311
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 312
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 313
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 315
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 316
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 317
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 318
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 319
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v10, 0x7f08005c

    .line 322
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setId(I)V

    .line 323
    iget-boolean v10, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v10, :cond_8

    const-string v10, "Send"

    goto :goto_5

    :cond_8
    const-string v10, "\u9001\u51fa\u4f5c\u7b54"

    :goto_5
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v9, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v10, 0x7f0700f2

    .line 325
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 326
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11, v12}, Landroid/widget/Button;->setPadding(IIII)V

    const/16 v10, 0x11

    .line 327
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 328
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v10, "question"

    .line 332
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagPrev"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 333
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    const-string v10, "question"

    .line 335
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagAfter"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 336
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    const-string v10, "question"

    .line 338
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "finalQu"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 339
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_b
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 346
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v8, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v3, Ltw/edu/kmu/act/TBLActivity$4;

    invoke-direct {v3, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$4;-><init>(Ltw/edu/kmu/act/TBLActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$5;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$5;-><init>(Ltw/edu/kmu/act/TBLActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$6;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$6;-><init>(Ltw/edu/kmu/act/TBLActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$7;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$7;-><init>(Ltw/edu/kmu/act/TBLActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :cond_c
    const-string v5, "3"

    .line 409
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 411
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    .line 412
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 413
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 415
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    .line 416
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 419
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 420
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 421
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 422
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 423
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 424
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 425
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 426
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 428
    invoke-virtual {v2, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 429
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 430
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 434
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    invoke-virtual {v2, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "question"

    .line 437
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 440
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 443
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 444
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/act/TBLActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "question"

    .line 447
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 448
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 451
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$8;

    invoke-direct {v2, v1, v7}, Ltw/edu/kmu/act/TBLActivity$8;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v5, v8, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v8, v13, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v11

    invoke-virtual {v2, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 463
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 465
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v5, :cond_d

    const-string v5, "Click image to enlarge"

    goto :goto_6

    :cond_d
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_6
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 467
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 468
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 469
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    const-string v2, "question"

    .line 474
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "_"

    .line 475
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v5, "question"

    .line 477
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "optionList"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    .line 478
    :goto_7
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 479
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 480
    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 481
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBox"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {v8, v14}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showOrder"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "optVal"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v9, "optKey"

    .line 484
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f08004f

    invoke-virtual {v8, v10, v9}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const/4 v9, 0x0

    .line 485
    :goto_8
    array-length v10, v2

    if-ge v9, v10, :cond_10

    const-string v10, "optKey"

    .line 486
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v13, v2, v9

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 487
    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 490
    :cond_10
    iget-object v7, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 493
    :cond_11
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004f

    .line 494
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setId(I)V

    .line 495
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v6, :cond_12

    const-string v6, "Pre"

    goto :goto_9

    :cond_12
    const-string v6, "\u4e0a\u4e00\u984c"

    :goto_9
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v2, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 497
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 500
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 501
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 502
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 503
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 504
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004f

    .line 507
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 508
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v7, :cond_13

    const-string v7, "Next"

    goto :goto_a

    :cond_13
    const-string v7, "\u4e0b\u4e00\u984c"

    :goto_a
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 510
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 511
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v7, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 513
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 514
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 515
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 516
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 517
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08004f

    .line 520
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setId(I)V

    .line 521
    iget-boolean v8, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v8, :cond_14

    const-string v8, "PreView"

    goto :goto_b

    :cond_14
    const-string v8, "\u9810\u89bd"

    :goto_b
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {v7, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v8, 0x7f0700f2

    .line 523
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 524
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v1, v9}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v15, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 525
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 526
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 527
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 528
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 529
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 530
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v10, 0x7f08005c

    .line 533
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setId(I)V

    .line 534
    iget-boolean v10, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v10, :cond_15

    const-string v10, "Send"

    goto :goto_c

    :cond_15
    const-string v10, "\u9001\u51fa\u4f5c\u7b54"

    :goto_c
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 535
    invoke-virtual {v9, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v10, 0x7f0700f2

    .line 536
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v10, 0x11

    .line 537
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setGravity(I)V

    .line 538
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 540
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 542
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v2, v11, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 543
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v6, v11, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 544
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v7, v11, v10, v13, v10}, Landroid/widget/Button;->setPadding(IIII)V

    .line 545
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v9, v11, v10, v12, v10}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v10, "question"

    .line 547
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagPrev"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 548
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_16
    const-string v10, "question"

    .line 550
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "flagAfter"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 551
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_17
    const-string v10, "question"

    .line 553
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "finalQu"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 554
    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_18
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 562
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v8, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    new-instance v3, Ltw/edu/kmu/act/TBLActivity$9;

    invoke-direct {v3, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$9;-><init>(Ltw/edu/kmu/act/TBLActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$10;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$10;-><init>(Ltw/edu/kmu/act/TBLActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$11;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$11;-><init>(Ltw/edu/kmu/act/TBLActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$12;

    invoke-direct {v2, v1, v5, v4}, Ltw/edu/kmu/act/TBLActivity$12;-><init>(Ltw/edu/kmu/act/TBLActivity;Lorg/json/JSONArray;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_13

    :cond_19
    const-string v5, "4"

    .line 677
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 679
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    .line 680
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 681
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    const-string v5, "#AB1980E0"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 683
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    .line 684
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->scrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "timer"

    .line 687
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 688
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 690
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 691
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 692
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 693
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v9

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 694
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 696
    invoke-virtual {v2, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 697
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "00:00:00"

    .line 698
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 702
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 703
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 704
    invoke-virtual {v2, v13, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v5, "question"

    .line 705
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "question"

    .line 708
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "imgPath"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 709
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 710
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 711
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 712
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Ltw/edu/kmu/act/TBLActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "question"

    .line 715
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "imgFile"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 716
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    .line 719
    iput-boolean v2, v1, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    .line 720
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$13;

    invoke-direct {v2, v1, v7}, Ltw/edu/kmu/act/TBLActivity$13;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    new-instance v2, Ltw/edu/kmu/tool/ImageDownloaderTask;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v5, v8, v9}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v8, v13, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    aput-object v7, v8, v11

    invoke-virtual {v2, v8}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 731
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 733
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v5, :cond_1a

    const-string v5, "Click image to enlarge"

    goto :goto_d

    :cond_1a
    const-string v5, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_d
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 735
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 736
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 737
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    iget-object v5, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1b
    const-string v2, "question"

    .line 741
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "myAns"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 744
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v1, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v14, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 745
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 746
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 747
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 748
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 749
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 750
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "edit1"

    .line 751
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    const/high16 v2, -0x1000000

    .line 752
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 753
    invoke-virtual {v5, v14}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 754
    iget-boolean v2, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v2, :cond_1c

    const-string v2, "Please answer"

    goto :goto_e

    :cond_1c
    const-string v2, "\u8acb\u8f38\u5165\u7b54\u6848"

    :goto_e
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v2, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 757
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08004f

    .line 758
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setId(I)V

    .line 759
    iget-boolean v5, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v5, :cond_1d

    const-string v5, "Pre"

    goto :goto_f

    :cond_1d
    const-string v5, "\u4e0a\u4e00\u984c"

    :goto_f
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 760
    invoke-virtual {v2, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v5, 0x7f0700f2

    .line 761
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 762
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42480000    # 50.0f

    invoke-static {v1, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 763
    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 764
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 765
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 766
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 767
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 768
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 770
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v6, 0x7f08004f

    .line 771
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 772
    iget-boolean v6, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v6, :cond_1e

    const-string v6, "Next"

    goto :goto_10

    :cond_1e
    const-string v6, "\u4e0b\u4e00\u984c"

    :goto_10
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual {v5, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v6, 0x7f0700f2

    .line 774
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 775
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v1, v7}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 776
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 777
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 778
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 779
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 780
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 781
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v7, 0x7f08004f

    .line 784
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 785
    iget-boolean v7, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v7, :cond_1f

    const-string v7, "PreView"

    goto :goto_11

    :cond_1f
    const-string v7, "\u9810\u89bd"

    :goto_11
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 786
    invoke-virtual {v6, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v7, 0x7f0700f2

    .line 787
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 788
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v1, v8}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 789
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 790
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 791
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 792
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 793
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 794
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 796
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v9, 0x7f08005c

    .line 797
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 798
    iget-boolean v9, v1, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v9, :cond_20

    const-string v9, "Send"

    goto :goto_12

    :cond_20
    const-string v9, "\u9001\u51fa\u4f5c\u7b54"

    :goto_12
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 799
    invoke-virtual {v8, v14}, Landroid/widget/Button;->setTextColor(I)V

    const v9, 0x7f0700f2

    .line 800
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    const/16 v9, 0x11

    .line 801
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 802
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 804
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 806
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v2, v10, v9, v11, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 807
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v5, v10, v9, v11, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 808
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v6, v10, v9, v11, v9}, Landroid/widget/Button;->setPadding(IIII)V

    .line 809
    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v12}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v8, v10, v9, v11, v9}, Landroid/widget/Button;->setPadding(IIII)V

    const-string v9, "question"

    .line 812
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "flagPrev"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 813
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_21
    const-string v9, "question"

    .line 815
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "flagAfter"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 816
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_22
    const-string v9, "question"

    .line 818
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v9, "finalQu"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 819
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 820
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 821
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->tilte1:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    :cond_23
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 825
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 826
    iget-object v3, v1, Ltw/edu/kmu/act/TBLActivity;->root1:Landroid/widget/LinearLayout;

    iget-object v7, v1, Ltw/edu/kmu/act/TBLActivity;->alertView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 830
    new-instance v3, Ltw/edu/kmu/act/TBLActivity$14;

    invoke-direct {v3, v1, v4}, Ltw/edu/kmu/act/TBLActivity$14;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$15;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLActivity$15;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$16;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLActivity$16;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 865
    new-instance v2, Ltw/edu/kmu/act/TBLActivity$17;

    invoke-direct {v2, v1, v4}, Ltw/edu/kmu/act/TBLActivity$17;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 887
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_13
    return-void
.end method

.method private setCountDownTime()V
    .locals 7

    .line 166
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "setCountDownTime start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "etime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v1, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneTimeDiff is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Ltw/edu/kmu/act/TBLActivity;->phoneTimeDiff:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Ltw/edu/kmu/act/TBLActivity;->ctServerTime:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0, v2}, Ltw/edu/kmu/act/TBLActivity;->dateDiff(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 174
    div-long v2, v0, v2

    .line 175
    sget-object v4, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctPeriodCount:I

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctHandler:Landroid/os/Handler;

    .line 179
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

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

    .line 139
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/TBLActivity$2;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public dateDiff(Ljava/lang/String;Ljava/text/SimpleDateFormat;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1255
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

    .line 1256
    div-long p1, v0, p1

    const-wide/32 p1, 0xea60

    .line 1257
    div-long p1, v0, p1

    const-wide/32 p1, 0x36ee80

    .line 1258
    div-long p1, v0, p1

    const-wide/32 p1, 0x5265c00

    .line 1259
    div-long p1, v0, p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1262
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public dateDiff4Phone(Ljava/lang/String;)J
    .locals 8

    .line 1228
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 1230
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1231
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1233
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 1234
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 p1, 0x0

    sub-long v1, v4, v6

    const-wide/16 v3, 0x3e8

    .line 1235
    div-long v3, v1, v3

    const-wide/32 v3, 0xea60

    .line 1236
    div-long v3, v1, v3

    const-wide/32 v3, 0x36ee80

    .line 1237
    div-long v3, v1, v3

    const-wide/32 v3, 0x5265c00

    .line 1238
    div-long v3, v1, v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1241
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a00d7

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    .line 1737
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u78ba\u5b9a\u8981\u96e2\u958b\u55ce?"

    .line 1739
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c012e

    .line 1740
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TBLActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLActivity$22;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLActivity$22;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0133

    .line 1749
    invoke-virtual {p0, v1}, Ltw/edu/kmu/act/TBLActivity;->getStringById(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ltw/edu/kmu/act/TBLActivity$21;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/TBLActivity$21;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Ltw/edu/kmu/act/TBLActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/TBLActivity;->bundle:Landroid/os/Bundle;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TBL "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "qutype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/TBLActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLActivity;->initView()V

    .line 94
    invoke-direct {p0}, Ltw/edu/kmu/act/TBLActivity;->initHandler()V

    .line 96
    new-instance p1, Ltw/edu/kmu/act/TBLActivity$GetServerTime;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/TBLActivity$GetServerTime;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/TBLActivity$GetServerTime;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1788
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onDestroy()V

    .line 1791
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Ltw/edu/kmu/act/TBLActivity;->ctHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltw/edu/kmu/act/TBLActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1795
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1762
    invoke-super {p0, p1, p2}, Ltw/edu/kmu/act/BasicActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1774
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-boolean v0, p0, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    if-eqz v0, :cond_0

    .line 1776
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u4e2d\u9014\u96e2\u958b\u4e86\u5594"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    new-instance v0, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$1;)V

    const/4 v1, 0x0

    .line 1778
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/TBLActivity$SendBlockTp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1780
    :cond_0
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u7528sendBlockTp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :goto_0
    invoke-super {p0}, Ltw/edu/kmu/act/BasicActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1768
    sget-object v0, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1769
    iput-boolean v0, p0, Ltw/edu/kmu/act/TBLActivity;->isSendTp:Z

    .line 1770
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

    .line 1565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1568
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1569
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "items"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1570
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1571
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1573
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

    .line 1578
    sget-object v1, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

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

    .line 1587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1591
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 1592
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 1593
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1594
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1595
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1596
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1597
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1598
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1599
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1601
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1607
    sget-object p2, Ltw/edu/kmu/act/TBLActivity;->TAG:Ljava/lang/String;

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

    .line 896
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 897
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v3, "#FFFFFF"

    .line 898
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 900
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 901
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x7f0700f4

    .line 902
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 905
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x41900000    # 18.0f

    const/4 v7, 0x2

    .line 906
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v8, -0x1000000

    .line 907
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Ltw/edu/kmu/act/TBLActivity;->examMap:Ljava/util/HashMap;

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

    .line 909
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700ee

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/high16 v10, 0x41a00000    # 20.0f

    .line 910
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v13, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v11, 0x0

    .line 911
    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 913
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 914
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 915
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 916
    iget-object v12, v0, Ltw/edu/kmu/act/TBLActivity;->examMap:Ljava/util/HashMap;

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 917
    invoke-virtual/range {p0 .. p0}, Ltw/edu/kmu/act/TBLActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f0700f9

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 918
    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v14

    invoke-static {v0, v10}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v12, v13, v13, v14, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    invoke-virtual {v9, v12, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 921
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 922
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 923
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 924
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 925
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 927
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 928
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, v0, Ltw/edu/kmu/act/TBLActivity;->display:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v10

    mul-int/lit8 v10, v10, 0x32

    div-int/lit8 v10, v10, 0x64

    const/4 v12, -0x2

    invoke-direct {v9, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x3

    .line 929
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 930
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 932
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Q:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Ltw/edu/kmu/act/TBLActivity;->examMap:Ljava/util/HashMap;

    const-string v15, "description"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 937
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v15, v0, Ltw/edu/kmu/act/TBLActivity;->display:Landroid/view/Display;

    invoke-virtual {v15}, Landroid/view/Display;->getWidth()I

    move-result v15

    mul-int/lit8 v15, v15, 0x1e

    div-int/lit8 v15, v15, 0x64

    invoke-direct {v14, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 938
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 939
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 940
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 941
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 942
    invoke-virtual {v9, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 943
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v14, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 945
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 948
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 949
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 952
    :goto_2
    iget-object v5, v0, Ltw/edu/kmu/act/TBLActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 953
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 954
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 955
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 956
    iget-object v10, v0, Ltw/edu/kmu/act/TBLActivity;->examDataList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    const-string v14, "questionType"

    .line 957
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 958
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 959
    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 960
    invoke-virtual {v15, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 961
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

    .line 962
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 964
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "timer"

    .line 965
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 966
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v15, 0x5

    .line 967
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v15, 0x40a00000    # 5.0f

    .line 968
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 969
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 970
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 971
    invoke-static {v0, v15}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 972
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    invoke-virtual {v2, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 975
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v13, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 978
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 979
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "imgPath"

    .line 981
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 982
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 983
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x43160000    # 150.0f

    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v13, v12, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 984
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 985
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 987
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Ltw/edu/kmu/act/TBLActivity;->imageUrl:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, ""

    .line 989
    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 990
    new-instance v15, Ltw/edu/kmu/act/TBLActivity$18;

    invoke-direct {v15, v0, v2}, Ltw/edu/kmu/act/TBLActivity$18;-><init>(Ltw/edu/kmu/act/TBLActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    new-instance v15, Ltw/edu/kmu/tool/ImageDownloaderTask;

    invoke-direct {v15, v4, v11, v0}, Ltw/edu/kmu/tool/ImageDownloaderTask;-><init>(Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/content/Context;)V

    new-array v11, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v13, v11, v16

    const/4 v13, 0x1

    aput-object v2, v11, v13

    invoke-virtual {v15, v11}, Ltw/edu/kmu/tool/ImageDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1002
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1003
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1004
    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

    if-eqz v4, :cond_3

    const-string v4, "Click image to enlarge"

    goto :goto_4

    :cond_3
    const-string v4, "\u9ede\u64ca\u5716\u7247\u53ef\u653e\u5927"

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1007
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1008
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_4
    const/4 v13, 0x1

    :goto_5
    const-string v2, "2"

    .line 1012
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1014
    new-instance v2, Landroid/widget/RadioGroup;

    invoke-direct {v2, v0}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 1015
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "radioGroup"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setTag(Ljava/lang/Object;)V

    .line 1018
    new-instance v3, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1019
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1020
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1021
    new-instance v11, Landroid/widget/RadioButton;

    invoke-direct {v11, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 1022
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "radioButton"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {v11, v8}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 1024
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

    const v14, 0x7f08004f

    const-string v15, "optKey"

    .line 1025
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/RadioButton;->setTag(ILjava/lang/Object;)V

    const/4 v14, 0x0

    .line 1026
    invoke-virtual {v11, v14}, Landroid/widget/RadioButton;->setEnabled(Z)V

    const-string v14, "correct"

    .line 1027
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1028
    invoke-virtual {v2, v11}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1031
    :cond_5
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1032
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1033
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1034
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1035
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1036
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1037
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1038
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1039
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 1042
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_7
    const-string v2, "3"

    .line 1044
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1047
    new-instance v2, Lorg/json/JSONArray;

    const-string v4, "optionList"

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1048
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 1049
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1050
    new-instance v11, Landroid/widget/CheckBox;

    invoke-direct {v11, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 1051
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

    .line 1052
    invoke-virtual {v11, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 1053
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

    const v14, 0x7f08004f

    const-string v15, "optKey"

    .line 1054
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    const-string v14, "correct"

    .line 1055
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v6, 0x0

    .line 1056
    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1057
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 1059
    :cond_8
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1060
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1061
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1062
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1063
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1064
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1065
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 1069
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_b

    :cond_a
    const-string v2, "4"

    .line 1071
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1073
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1074
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1075
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1076
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1077
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1078
    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1079
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    .line 1080
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    const-string v4, "edit1"

    .line 1081
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 1082
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setTextColor(I)V

    const v4, 0x7f0700f5

    .line 1083
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    const-string v4, "myAnswer"

    .line 1085
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1088
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1089
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x40a00000    # 5.0f

    .line 1090
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1091
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1092
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1093
    invoke-static {v0, v6}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1094
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1095
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, v0, Ltw/edu/kmu/act/TBLActivity;->isEnglish:Z

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

    .line 1098
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1099
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v3, 0x0

    .line 1103
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

    .line 1106
    :cond_e
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1107
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1110
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1111
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1113
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700f3

    .line 1114
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1115
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    .line 1116
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1117
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1118
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1120
    new-instance v3, Ltw/edu/kmu/act/TBLActivity$ViewDialog;

    invoke-direct {v3, v0}, Ltw/edu/kmu/act/TBLActivity$ViewDialog;-><init>(Ltw/edu/kmu/act/TBLActivity;)V

    const-string v4, "99"

    .line 1121
    invoke-virtual {v3, v0, v1, v4}, Ltw/edu/kmu/act/TBLActivity$ViewDialog;->showDialog(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 1122
    new-instance v1, Ltw/edu/kmu/act/TBLActivity$19;

    invoke-direct {v1, v0, v3}, Ltw/edu/kmu/act/TBLActivity$19;-><init>(Ltw/edu/kmu/act/TBLActivity;Ltw/edu/kmu/act/TBLActivity$ViewDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
