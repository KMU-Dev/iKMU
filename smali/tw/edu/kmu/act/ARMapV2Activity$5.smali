.class Ltw/edu/kmu/act/ARMapV2Activity$5;
.super Ljava/lang/Object;
.source "ARMapV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/ARMapV2Activity;->initFunctionBtn()V
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

    .line 268
    iput-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 273
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    const-class v1, Ltw/edu/kmu/act/ARViewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "serverDataList"

    .line 274
    iget-object v1, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARMapV2Activity;->access$500(Ltw/edu/kmu/act/ARMapV2Activity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "type"

    .line 275
    iget-object v1, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/ARMapV2Activity;->access$000(Ltw/edu/kmu/act/ARMapV2Activity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/ARMapV2Activity;->startActivity(Landroid/content/Intent;)V

    .line 277
    iget-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    const v0, 0x7f010017

    const v1, 0x7f010018

    invoke-virtual {p1, v0, v1}, Ltw/edu/kmu/act/ARMapV2Activity;->overridePendingTransition(II)V

    .line 278
    iget-object p1, p0, Ltw/edu/kmu/act/ARMapV2Activity$5;->this$0:Ltw/edu/kmu/act/ARMapV2Activity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/ARMapV2Activity;->finish()V

    return-void
.end method
