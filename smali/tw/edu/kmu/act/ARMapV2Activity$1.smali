.class Ltw/edu/kmu/act/ARMapV2Activity$1;
.super Ljava/lang/Object;
.source "ARMapV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARMapV2Activity;->createTab1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/ARMapV2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/ARMapV2Activity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity$1;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$1;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/ARMapV2Activity;->access$200(Ltw/edu/kmu/act/ARMapV2Activity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/ARMapV2Activity$1;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    iget-object v2, p0, Ltw/edu/kmu/act/ARMapV2Activity$1;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-static {v2}, Ltw/edu/kmu/act/ARMapV2Activity;->access$000(Ltw/edu/kmu/act/ARMapV2Activity;)I

    move-result v2

    invoke-static {v1, v2}, Ltw/edu/kmu/act/ARMapV2Activity;->access$100(Ltw/edu/kmu/act/ARMapV2Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    return-void
.end method
