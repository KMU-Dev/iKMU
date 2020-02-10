.class Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EvlClassListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/EvlClassListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img1:Landroid/widget/ImageView;

.field img2:Landroid/widget/TextView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

.field title11:Landroid/widget/TextView;

.field title12:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/EvlClassListViewAdapter;)V
    .locals 0

    .line 42
    iput-object p1, p0, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/EvlClassListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/EvlClassListViewAdapter;Ltw/edu/kmu/adapter/EvlClassListViewAdapter$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/EvlClassListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/EvlClassListViewAdapter;)V

    return-void
.end method
