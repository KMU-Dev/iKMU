.class public Ltw/edu/kmu/act/ClassRoomQueryActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "ClassRoomQueryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/ClassRoomQueryActivity$ReadDataFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassRoomQueryActivity"


# instance fields
.field private btnQuery:Landroid/widget/Button;

.field private dateKey:[Ljava/lang/String;

.field private dateSpinner:Landroid/widget/Spinner;

.field private handler:Landroid/os/Handler;

.field private planoKey:[Ljava/lang/String;

.field private planoSpinner:Landroid/widget/Spinner;

.field private planoValue:[Ljava/lang/String;

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

.field private weekKey:[Ljava/lang/String;

.field private weekSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    .line 197
    new-instance v0, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$2;-><init>(Ltw/edu/kmu/act/ClassRoomQueryActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$102(Ltw/edu/kmu/act/ClassRoomQueryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ClassRoomQueryActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/ClassRoomQueryActivity;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/ClassRoomQueryActivity;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Ltw/edu/kmu/act/ClassRoomQueryActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/ClassRoomQueryActivity;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoValue:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/ClassRoomQueryActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/ClassRoomQueryActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 24
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/ClassRoomQueryActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->updateData()V

    return-void
.end method

.method private readServerDataList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v2, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 109
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private updateData()V
    .locals 11

    .line 118
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 120
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 121
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "-"

    .line 124
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

    .line 125
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    .line 126
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    array-length v3, v3

    const/4 v5, 0x5

    if-ge v0, v3, :cond_0

    .line 128
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 129
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f080252

    .line 133
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateSpinner:Landroid/widget/Spinner;

    .line 135
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateKey:[Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 138
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 139
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->dateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 141
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoKey:[Ljava/lang/String;

    .line 142
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoValue:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 144
    :goto_1
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoKey:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 146
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoKey:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "no"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 147
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoValue:[Ljava/lang/String;

    iget-object v7, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "no"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const v0, 0x7f0800ba

    .line 151
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoSpinner:Landroid/widget/Spinner;

    .line 153
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoKey:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->planoSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f08024d

    .line 160
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x7

    .line 161
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    .line 162
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const-string v3, "\u661f\u671f\u65e5"

    aput-object v3, v0, v4

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e00"

    aput-object v3, v0, v6

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e8c"

    aput-object v3, v0, v8

    .line 165
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "\u661f\u671f\u4e09"

    aput-object v4, v0, v3

    .line 166
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "\u661f\u671f\u56db"

    aput-object v4, v0, v3

    .line 167
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const-string v3, "\u661f\u671f\u4e94"

    aput-object v3, v0, v5

    .line 168
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "\u661f\u671f\u516d"

    aput-object v4, v0, v3

    .line 171
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekKey:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 174
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->weekSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->btnQuery:Landroid/widget/Button;

    new-instance v1, Ltw/edu/kmu/act/ClassRoomQueryActivity$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$1;-><init>(Ltw/edu/kmu/act/ClassRoomQueryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a0039

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 50
    sget-object v0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->url:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->display:Landroid/view/Display;

    const p1, 0x7f0801c9

    .line 58
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0801dc

    .line 59
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u65e5\u671f"

    .line 60
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u5834\u5730\u4ee3\u865f"

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f080153

    .line 63
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->btnQuery:Landroid/widget/Button;

    .line 64
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->btnQuery:Landroid/widget/Button;

    const-string v0, "\u5834\u5730\u51fa\u501f\u67e5\u8a62"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 67
    new-instance p1, Ltw/edu/kmu/act/ClassRoomQueryActivity$ReadDataFromServer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/ClassRoomQueryActivity;Ltw/edu/kmu/act/ClassRoomQueryActivity$1;)V

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/ClassRoomQueryActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    sget-object p1, Ltw/edu/kmu/act/ClassRoomQueryActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
