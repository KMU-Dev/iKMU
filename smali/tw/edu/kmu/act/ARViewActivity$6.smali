.class Ltw/edu/kmu/act/ARViewActivity$6;
.super Ljava/lang/Object;
.source "ARViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARViewActivity;->createTab1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARViewActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARViewActivity;)V
    .locals 0

    .line 398
    iput-object p1, p0, Ltw/edu/kmu/act/ARViewActivity$6;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 401
    iget-object v0, p0, Ltw/edu/kmu/act/ARViewActivity$6;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARViewActivity;->access$300(Ltw/edu/kmu/act/ARViewActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/ARViewActivity$6;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    iget-object v2, p0, Ltw/edu/kmu/act/ARViewActivity$6;->this$0:Ltw/edu/kmu/act/ARViewActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/ARViewActivity;->access$100(Ltw/edu/kmu/act/ARViewActivity;)I

    move-result v2

    invoke-static {v1, v2}, Ltw/edu/kmu/act/ARViewActivity;->access$200(Ltw/edu/kmu/act/ARViewActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    return-void
.end method
