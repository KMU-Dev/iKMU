.class public Ltw/edu/kmu/adapter/CalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarAdapter"

.field public static dayString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field calMaxP:I

.field curentDateString:Ljava/lang/String;

.field df:Ljava/text/DateFormat;

.field firstDay:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field itemvalue:Ljava/lang/String;

.field lastWeekDay:I

.field leftDays:I

.field private mContext:Landroid/content/Context;

.field maxP:I

.field maxWeeknumber:I

.field mnthlength:I

.field private month:Ljava/util/Calendar;

.field public pmonth:Ljava/util/GregorianCalendar;

.field public pmonthmaxset:Ljava/util/GregorianCalendar;

.field private previousView:Landroid/view/View;

.field private selectedDate:Ljava/util/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/GregorianCalendar;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    .line 51
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 52
    iput-object p2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    .line 53
    invoke-virtual {p2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/GregorianCalendar;

    iput-object p2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->selectedDate:Ljava/util/GregorianCalendar;

    .line 54
    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->mContext:Landroid/content/Context;

    .line 55
    iget-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    const/4 p2, 0x5

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->items:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd"

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->df:Ljava/text/DateFormat;

    .line 58
    iget-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->df:Ljava/text/DateFormat;

    iget-object p2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->selectedDate:Ljava/util/GregorianCalendar;

    invoke-virtual {p2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->curentDateString:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ltw/edu/kmu/adapter/CalendarAdapter;->refreshDays()V

    return-void
.end method

.method private getMaxP()I
    .locals 5

    .line 185
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 186
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonth:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonth:Ljava/util/GregorianCalendar;

    iget-object v2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 190
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonth:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 68
    sget-object v0, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 72
    sget-object v0, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 85
    iget-object p2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->mContext:Landroid/content/Context;

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0a0034

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0800bf

    .line 89
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 91
    sget-object v0, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 93
    aget-object v0, v0, v1

    const-string v2, "^0*"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v4, :cond_1

    iget v2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->firstDay:I

    if-ge p1, v2, :cond_1

    .line 97
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 99
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x7

    if-ge v2, v6, :cond_2

    const/16 v2, 0x1c

    if-le p1, v2, :cond_2

    .line 101
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 103
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    const v2, -0xffff01

    .line 106
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :goto_0
    sget-object v2, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->curentDateString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {p0, p2}, Ltw/edu/kmu/adapter/CalendarAdapter;->setSelected(Landroid/view/View;)Landroid/view/View;

    .line 111
    iput-object p2, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->previousView:Landroid/view/View;

    goto :goto_1

    :cond_3
    const v2, 0x7f070116

    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget-object p3, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v4, :cond_4

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 124
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    const p3, 0x7f0800c0

    .line 128
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x4

    .line 132
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public refreshDays()V
    .locals 5

    .line 149
    sget-object v0, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 151
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonth:Ljava/util/GregorianCalendar;

    .line 153
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->firstDay:I

    .line 155
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->month:Ljava/util/Calendar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->maxWeeknumber:I

    .line 157
    iget v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->maxWeeknumber:I

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->mnthlength:I

    .line 158
    invoke-direct {p0}, Ltw/edu/kmu/adapter/CalendarAdapter;->getMaxP()I

    move-result v0

    iput v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->maxP:I

    .line 159
    iget v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->maxP:I

    iget v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->firstDay:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->calMaxP:I

    .line 164
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonth:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonthmaxset:Ljava/util/GregorianCalendar;

    .line 168
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonthmaxset:Ljava/util/GregorianCalendar;

    iget v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->calMaxP:I

    add-int/2addr v1, v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->mnthlength:I

    if-ge v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->df:Ljava/text/DateFormat;

    iget-object v4, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonthmaxset:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->itemvalue:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->pmonthmaxset:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 177
    sget-object v1, Ltw/edu/kmu/adapter/CalendarAdapter;->dayString:Ljava/util/List;

    iget-object v4, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->itemvalue:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public setSelected(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 138
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->previousView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->previousView:Landroid/view/View;

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    :cond_0
    iput-object p1, p0, Ltw/edu/kmu/adapter/CalendarAdapter;->previousView:Landroid/view/View;

    const v0, 0x7f070084

    .line 142
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p1
.end method
