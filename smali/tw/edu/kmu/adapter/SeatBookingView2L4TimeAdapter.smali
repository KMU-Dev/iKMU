.class public Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;
.super Landroid/widget/SimpleAdapter;
.source "SeatBookingView2L4TimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatBookingView2L4TimeAdapter"


# instance fields
.field private context:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private isPad:Z

.field private resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 31
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 32
    iput-object p2, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->data:Ljava/util/List;

    .line 33
    iput-object p1, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->context:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    iput p3, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->resource:I

    return-void
.end method

.method static synthetic access$100(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;)Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;
    .locals 0

    .line 19
    iget-object p0, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->context:Ltw/edu/kmu/act/SeatBookingView2L4TimeActivity;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 58
    iget-object p3, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->data:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->inflater:Landroid/view/LayoutInflater;

    iget p3, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->resource:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$1;)V

    const v0, 0x7f080052

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    const v0, 0x7f08005c

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    const v0, 0x7f080061

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    const v0, 0x7f080062

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;

    .line 78
    :goto_0
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 80
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 81
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 82
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 83
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 84
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 85
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 90
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    const-string v3, "1"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    const-string v3, "1"

    .line 91
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    const-string v0, "2"

    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    const-string v5, "2"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    const-string v5, "2"

    .line 98
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    :goto_1
    const-string v0, "3"

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    const-string v5, "3"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    const-string v5, "3"

    .line 110
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_5
    :goto_2
    const-string v0, "4"

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    const-string v3, "4"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    const-string v2, "4"

    .line 122
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_3

    .line 128
    :cond_6
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 131
    :cond_7
    :goto_3
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->isPad:Z

    if-nez v0, :cond_8

    .line 133
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 134
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 138
    :cond_8
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn1:Landroid/widget/CheckBox;

    new-instance v1, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$1;

    invoke-direct {v1, p0, p1, p3}, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$1;-><init>(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;Ljava/util/HashMap;Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn2:Landroid/widget/CheckBox;

    new-instance v1, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$2;

    invoke-direct {v1, p0, p1, p3}, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$2;-><init>(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;Ljava/util/HashMap;Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 163
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn3:Landroid/widget/CheckBox;

    new-instance v1, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$3;

    invoke-direct {v1, p0, p1, p3}, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$3;-><init>(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;Ljava/util/HashMap;Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p3, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;->btn4:Landroid/widget/CheckBox;

    new-instance v1, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$4;

    invoke-direct {v1, p0, p1, p3}, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$4;-><init>(Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;Ljava/util/HashMap;Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method

.method public isPad()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->isPad:Z

    return v0
.end method

.method public setPad(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Ltw/edu/kmu/adapter/SeatBookingView2L4TimeAdapter;->isPad:Z

    return-void
.end method
