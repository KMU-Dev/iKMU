.class Ltw/edu/kmu/act/TBLReplyRecordActivity$2;
.super Ljava/lang/Object;
.source "TBLReplyRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TBLReplyRecordActivity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TBLReplyRecordActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$2;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 139
    iget-object p1, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$2;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->access$200(Ltw/edu/kmu/act/TBLReplyRecordActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 141
    iget-object p2, p0, Ltw/edu/kmu/act/TBLReplyRecordActivity$2;->this$0:Ltw/edu/kmu/act/TBLReplyRecordActivity;

    const-string p3, "questionId"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/TBLReplyRecordActivity;->getExamData(Ljava/lang/String;)V

    return-void
.end method
