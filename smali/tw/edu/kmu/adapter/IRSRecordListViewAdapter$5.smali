.class Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;
.super Ljava/lang/Object;
.source "IRSRecordListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->parseAskView(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/lang/String;)V
    .locals 0

    .line 552
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;->this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 555
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;->this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

    invoke-static {v0}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->access$000(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;)Ltw/edu/kmu/act/IRSRecordActivity;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/ZoomImageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgFileName"

    .line 557
    iget-object v1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "header"

    const-string v1, ""

    .line 558
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "inSampleSize"

    const-string v1, "1"

    .line 559
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$5;->this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

    invoke-static {v0}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->access$000(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;)Ltw/edu/kmu/act/IRSRecordActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/IRSRecordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
