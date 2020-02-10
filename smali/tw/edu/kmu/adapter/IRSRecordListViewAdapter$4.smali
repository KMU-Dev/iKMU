.class Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;
.super Ljava/lang/Object;
.source "IRSRecordListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->parseQAView(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

.field final synthetic val$data:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;Ljava/util/HashMap;)V
    .locals 0

    .line 482
    iput-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;->this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;->val$data:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 485
    iget-object p1, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;->this$0:Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;

    invoke-static {p1}, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;->access$000(Ltw/edu/kmu/adapter/IRSRecordListViewAdapter;)Ltw/edu/kmu/act/IRSRecordActivity;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/adapter/IRSRecordListViewAdapter$4;->val$data:Ljava/util/HashMap;

    const-string v1, "questionId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ltw/edu/kmu/act/IRSRecordActivity;->getExamData(Ljava/lang/String;)V

    return-void
.end method
