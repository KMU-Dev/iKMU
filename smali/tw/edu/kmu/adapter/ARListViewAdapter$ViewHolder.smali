.class Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ARListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/adapter/ARListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field distance:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Ltw/edu/kmu/adapter/ARListViewAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/adapter/ARListViewAdapter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;->this$0:Ltw/edu/kmu/adapter/ARListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/adapter/ARListViewAdapter;Ltw/edu/kmu/adapter/ARListViewAdapter$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ltw/edu/kmu/adapter/ARListViewAdapter$ViewHolder;-><init>(Ltw/edu/kmu/adapter/ARListViewAdapter;)V

    return-void
.end method
