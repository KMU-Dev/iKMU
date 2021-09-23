.class Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BusListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/BusListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/widget/TextView;

.field imageView01:Landroid/widget/ImageView;

.field imageView02:Landroid/widget/ImageView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/BusListViewAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/BusListViewAdapter;)V
    .locals 0

    .line 78
    iput-object p1, p0, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/BusListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/BusListViewAdapter;Ltw/edu/kmu/adapter/BusListViewAdapter$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/BusListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/BusListViewAdapter;)V

    return-void
.end method
