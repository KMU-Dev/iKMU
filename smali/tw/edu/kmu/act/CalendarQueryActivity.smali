.class public Ltw/edu/kmu/act/CalendarQueryActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "CalendarQueryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/CalendarQueryActivity$GetKeyWordData;,
        Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dateBtnLayout:Landroid/widget/LinearLayout;

.field private dateCellHeight:I

.field private dateCellWidth:I

.field private dateKey:[Ljava/lang/String;

.field private editText:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private lv:Landroid/widget/ListView;

.field private queryDate:Ljava/lang/String;

.field private serverDataList:Ljava/util/ArrayList;
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

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Ltw/edu/kmu/act/ClassRoomQueryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltw/edu/kmu/act/CalendarQueryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellWidth:I

    .line 52
    iput v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellHeight:I

    .line 340
    new-instance v0, Ltw/edu/kmu/act/CalendarQueryActivity$5;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/CalendarQueryActivity$5;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/EditText;
    .locals 0

    .line 40
    iget-object p0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 40
    iget-object p0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->setDateBtnAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/widget/ListView;
    .locals 0

    .line 40
    iget-object p0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->lv:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$602(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->readServerDataList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/CalendarQueryActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/CalendarQueryActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->showList()V

    return-void
.end method

.method private initDateBtn()V
    .locals 14

    const v0, 0x7f080121

    .line 128
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    .line 129
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v0, 0x42480000    # 50.0f

    .line 130
    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellWidth:I

    const/high16 v0, 0x42820000    # 65.0f

    .line 131
    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellHeight:I

    .line 133
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 134
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "-"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v6

    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v3, v5, v7}, Ljava/util/Calendar;->set(III)V

    const/16 v3, 0x5a

    .line 138
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    .line 139
    iget-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aput-object v0, v3, v4

    .line 140
    iget-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aget-object v5, v5, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aget-object v9, v9, v4

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string v10, "en"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    sget-object v9, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_0
    const-string v10, "%ta"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string v10, "en"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_1
    sget-object v9, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_1
    const-string v10, "%tb"

    new-array v11, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Ltw/edu/kmu/act/CalendarQueryActivity;->getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iget v7, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellWidth:I

    iget v9, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellHeight:I

    invoke-virtual {v3, v5, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/4 v3, 0x1

    .line 141
    :goto_2
    iget-object v5, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    const/4 v5, 0x5

    .line 142
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 143
    iget-object v5, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 144
    iget-object v5, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string v7, "en"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_3

    :cond_2
    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_3
    const-string v7, "%tb"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 145
    iget-object v7, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->currentLocale:Ljava/lang/String;

    const-string v9, "en"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_4

    :cond_3
    sget-object v7, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_4
    const-string v9, "%ta"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 146
    iget-object v9, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aget-object v10, v10, v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aget-object v12, v12, v3

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5}, Ltw/edu/kmu/act/CalendarQueryActivity;->getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iget v7, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellWidth:I

    iget v10, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellHeight:I

    invoke-virtual {v9, v5, v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 148
    :cond_4
    iput-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->queryDate:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateKey:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->setDateBtnColor(Ljava/lang/String;)V

    return-void
.end method

.method private initSearchText()V
    .locals 2

    const v0, 0x7f0800e1

    .line 86
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->editText:Landroid/widget/EditText;

    const-string v0, "input_method"

    .line 88
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Ltw/edu/kmu/act/CalendarQueryActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/CalendarQueryActivity$1;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private readServerDataList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    .line 307
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->mainHandler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "keyWord"

    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0009

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->url:Ljava/lang/String;

    .line 318
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?k="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    sget-object v2, Ltw/edu/kmu/act/CalendarQueryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalUrl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    invoke-virtual {v2, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0008

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->url:Ljava/lang/String;

    .line 324
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 325
    iget-object v1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->queryDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 331
    :catch_0
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-object v0
.end method

.method private setDateBtnAction(Ljava/lang/String;)V
    .locals 3

    .line 174
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->setDateBtnColor(Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->queryDate:Ljava/lang/String;

    .line 180
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 181
    new-instance p1, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ltw/edu/kmu/act/CalendarQueryActivity$1;)V

    const/4 v0, 0x1

    .line 182
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setDateBtnColor(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 190
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 192
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x10000

    .line 196
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v2, -0x1000000

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showList()V
    .locals 12

    .line 210
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->serverDataList:Ljava/util/ArrayList;

    const v4, 0x7f0a0036

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "time"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "status"

    aput-object v7, v5, v6

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    .line 232
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 233
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x64

    const/16 v10, 0x3c

    const/4 v11, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Ltw/edu/kmu/adapter/CalnedarListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    .line 238
    iget-object v1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Ltw/edu/kmu/act/CalendarQueryActivity$4;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/CalendarQueryActivity$4;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    .line 211
    :cond_1
    :goto_0
    sget-object v0, Ltw/edu/kmu/act/CalendarQueryActivity;->TAG:Ljava/lang/String;

    const-string v1, "showList No Data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u67e5\u7121\u8cc7\u6599"

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u78ba\u5b9a"

    new-instance v2, Ltw/edu/kmu/act/CalendarQueryActivity$3;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/CalendarQueryActivity$3;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;)V

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    iget-object v0, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801d7
        0x7f0801ea
    .end array-data
.end method


# virtual methods
.method public getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 156
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellWidth:I

    iget v3, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->dateCellHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 161
    invoke-virtual {v0, p2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 p2, 0x11

    .line 162
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setGravity(I)V

    .line 163
    new-instance p2, Ltw/edu/kmu/act/CalendarQueryActivity$2;

    invoke-direct {p2, p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity$2;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0035

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    sget-object v0, Ltw/edu/kmu/act/CalendarQueryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00be

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->url:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->display:Landroid/view/Display;

    const p1, 0x7f080125

    .line 69
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/CalendarQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->lv:Landroid/widget/ListView;

    .line 71
    invoke-direct {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->initDateBtn()V

    .line 73
    invoke-direct {p0}, Ltw/edu/kmu/act/CalendarQueryActivity;->initSearchText()V

    .line 75
    iget-object p1, p0, Ltw/edu/kmu/act/CalendarQueryActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 76
    new-instance p1, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/CalendarQueryActivity;Ltw/edu/kmu/act/CalendarQueryActivity$1;)V

    const/4 v0, 0x1

    .line 77
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/CalendarQueryActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    sget-object p1, Ltw/edu/kmu/act/CalendarQueryActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
