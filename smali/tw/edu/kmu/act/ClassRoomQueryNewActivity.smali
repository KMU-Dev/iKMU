.class public Ltw/edu/kmu/act/ClassRoomQueryNewActivity;
.super Ltw/edu/kmu/act/BasicActivity;
.source "ClassRoomQueryNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;,
        Ltw/edu/kmu/act/ClassRoomQueryNewActivity$ReadDataFromServer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClassRoomQueryNewActivity"


# instance fields
.field private cellWidth:I

.field private dateBtnLayout:Landroid/widget/LinearLayout;

.field private dateCellHeight:I

.field private dateCellWidth:I

.field private dateKey:[Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private lv:Landroid/widget/ListView;

.field private planoKey:[Ljava/lang/String;

.field private planoSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private planoSpinner:Landroid/widget/Spinner;

.field private planoValue:[Ljava/lang/String;

.field private queryDate:Ljava/lang/String;

.field private queryPlano:Ljava/lang/String;

.field private queryType:Ljava/lang/String;

.field private queryTypeIndex:I

.field private roomDataList:Ljava/util/ArrayList;
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

.field private typeBtnLayout:Landroid/widget/LinearLayout;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/BasicActivity;-><init>()V

    const-string v0, "1"

    .line 53
    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryTypeIndex:I

    .line 56
    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->cellWidth:I

    .line 62
    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellWidth:I

    .line 63
    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellHeight:I

    .line 335
    new-instance v0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$3;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$3;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 381
    new-instance v0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$4;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$4;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryDate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->updateData()V

    return-void
.end method

.method static synthetic access$1202(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->roomDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->showRoomList()V

    return-void
.end method

.method static synthetic access$200(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->readServerDataList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setDateBtnAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setTypeBtnAction(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryPlano:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryPlano:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)[Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoValue:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 37
    iget-object p0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private initDateBtn()V
    .locals 13

    const v0, 0x7f080117

    .line 184
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v0, 0x42480000    # 50.0f

    .line 186
    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellWidth:I

    const/high16 v0, 0x42820000    # 65.0f

    .line 187
    invoke-static {p0, v0}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellHeight:I

    .line 189
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 190
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "-"

    .line 193
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

    .line 194
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    .line 195
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 196
    :goto_0
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    const/4 v3, 0x5

    .line 197
    invoke-virtual {v2, v3, v6}, Ljava/util/Calendar;->add(II)V

    .line 198
    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 199
    iget-boolean v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_1
    const-string v5, "%tb"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    iget-boolean v5, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v5, :cond_1

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_2

    :cond_1
    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    :goto_2
    const-string v7, "%ta"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v5, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 201
    iget-object v7, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    aget-object v9, v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    aget-object v11, v11, v0

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9, v3}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    iget v5, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellWidth:I

    iget v9, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellHeight:I

    invoke-virtual {v7, v3, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateKey:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setDateBtnColor(Ljava/lang/String;)V

    return-void
.end method

.method private initPlanoSpinner(Ljava/lang/String;)V
    .locals 5

    .line 154
    sget-object v0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlanoSpinner initName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800ba

    .line 155
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 158
    iget-boolean v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "eplaknam"

    goto :goto_1

    :cond_1
    const-string v3, "plaknam"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoValue:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 166
    :goto_2
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_3

    .line 168
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 169
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoValue:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 174
    :cond_3
    new-instance p1, Landroid/widget/ArrayAdapter;

    const v0, 0x1090008

    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private initTypeBtn(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f080116

    .line 267
    invoke-virtual {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->typeBtnLayout:Landroid/widget/LinearLayout;

    .line 268
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->typeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 269
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    iput v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->cellWidth:I

    const/4 v0, 0x0

    .line 270
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 271
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->typeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getTypeBtnView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x2

    goto :goto_2

    :cond_1
    iget v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->cellWidth:I

    :goto_2
    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {p0, v4}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_2
    iget p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryTypeIndex:I

    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setTypeBtnColor(I)V

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

    .line 112
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isNetworkAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->mainHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-object v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 124
    :catch_0
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->handler:Landroid/os/Handler;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object v0
.end method

.method private setDateBtnAction(Ljava/lang/String;)V
    .locals 3

    .line 229
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setDateBtnColor(Ljava/lang/String;)V

    .line 230
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryDate:Ljava/lang/String;

    .line 232
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryPlano:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "\u5834\u5730\u4e0d\u80fd\u7a7a\u767d"

    .line 234
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    .line 235
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 236
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 240
    :cond_0
    new-instance p1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;)V

    .line 241
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setDateBtnColor(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 250
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 251
    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x10000

    .line 255
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    .line 258
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v2, -0x1000000

    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTypeBtnAction(Ljava/lang/String;I)V
    .locals 4

    .line 307
    invoke-direct {p0, p2}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setTypeBtnColor(I)V

    .line 308
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 310
    iget-boolean v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v2, :cond_1

    const-string v2, "eplaknam"

    goto :goto_1

    :cond_1
    const-string v2, "plaknam"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    .line 317
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoValue:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 319
    :goto_2
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 321
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "no"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 322
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoValue:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 327
    :cond_3
    new-instance p1, Landroid/widget/ArrayAdapter;

    const p2, 0x1090008

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoKey:[Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p2, 0x1090009

    .line 329
    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 330
    iget-object p2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 331
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSpinner:Landroid/widget/Spinner;

    iget-object p2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->planoSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setTypeBtnColor(I)V
    .locals 4

    .line 361
    iput p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->queryTypeIndex:I

    const/4 v0, 0x0

    .line 363
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->typeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 364
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->typeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 368
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x10000

    .line 369
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const-string v2, "#B3D465"

    .line 371
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/high16 v2, -0x1000000

    .line 373
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showRoomList()V
    .locals 13

    .line 469
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->roomDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->roomDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 485
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x8

    :goto_0
    const/16 v1, 0x16

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 491
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :goto_2
    add-int/lit8 v6, v0, 0x1

    if-ge v6, v4, :cond_2

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    const-string v7, "time"

    .line 494
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":10~"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "status"

    .line 495
    iget-object v5, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->roomDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "estatus"

    .line 496
    iget-object v5, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->roomDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "et"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto/16 :goto_0

    .line 500
    :cond_3
    new-instance v0, Ltw/edu/kmu/adapter/ClassListViewAdapter;

    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a003c

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "time"

    aput-object v7, v6, v2

    const-string v2, "status"

    const/4 v7, 0x1

    aput-object v2, v6, v7

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    .line 505
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 506
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x64

    const/16 v11, 0x3c

    const/4 v12, 0x5

    move-object v1, v0

    move-object v2, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Ltw/edu/kmu/adapter/ClassListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/content/res/Resources;Ljava/lang/String;III)V

    .line 511
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 471
    :cond_4
    :goto_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v1, :cond_5

    const-string v1, "No Datas"

    goto :goto_6

    :cond_5
    const-string v1, "\u67e5\u7121\u8cc7\u6599"

    .line 472
    :goto_6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v1, :cond_6

    const-string v1, "OK"

    goto :goto_7

    :cond_6
    const-string v1, "\u78ba\u5b9a"

    :goto_7
    new-instance v2, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$5;

    invoke-direct {v2, p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$5;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V

    .line 473
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 481
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 4
        0x7f0801c9
        0x7f0801dc
    .end array-data
.end method

.method private updateData()V
    .locals 4

    .line 133
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 137
    iget-boolean v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v3, :cond_1

    const-string v3, "eplaknam"

    goto :goto_1

    :cond_1
    const-string v3, "plaknam"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    iget-boolean v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v3, :cond_2

    const-string v3, "eplaknam"

    goto :goto_2

    :cond_2
    const-string v3, "plaknam"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->initTypeBtn(Ljava/util/ArrayList;)V

    .line 144
    invoke-direct {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->initDateBtn()V

    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->initPlanoSpinner(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getDateBtnView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 211
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellWidth:I

    iget v3, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->dateCellHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 216
    invoke-virtual {v0, p2, v1}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 p2, 0x11

    .line 217
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setGravity(I)V

    .line 218
    new-instance p2, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;

    invoke-direct {p2, p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0a003a

    return v0
.end method

.method public getTypeBtnView(Ljava/lang/String;I)Landroid/view/View;
    .locals 4

    .line 280
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 281
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x2

    goto :goto_0

    :cond_0
    iget v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->cellWidth:I

    :goto_0
    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {p0, v3}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 282
    invoke-static {p0, v2}, Ltw/edu/kmu/tool/ImageTool;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-boolean v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->isEnglish:Z

    if-eqz v1, :cond_1

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 295
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 296
    new-instance v1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;

    invoke-direct {v1, p0, p1, p2}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$2;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    sget-object v0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0, p1}, Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c00ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->url:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->display:Landroid/view/Display;

    const p1, 0x7f08011b

    .line 79
    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->lv:Landroid/widget/ListView;

    .line 81
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 82
    new-instance p1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$ReadDataFromServer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$ReadDataFromServer;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;)V

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$ReadDataFromServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    sget-object p1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate End"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
