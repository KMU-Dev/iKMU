.class Ltw/edu/kmu/act/IRSRecordActivity$1;
.super Ljava/lang/Object;
.source "IRSRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSRecordActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSRecordActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 149
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    iget-object p2, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p2}, Ltw/edu/kmu/act/IRSRecordActivity;->access$200(Ltw/edu/kmu/act/IRSRecordActivity;)[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/IRSRecordActivity;->access$300(Ltw/edu/kmu/act/IRSRecordActivity;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Ltw/edu/kmu/act/IRSRecordActivity;->access$102(Ltw/edu/kmu/act/IRSRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$100(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string p1, ""

    iget-object p3, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/IRSRecordActivity;->access$100(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSRecordActivity;->access$400(Ltw/edu/kmu/act/IRSRecordActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 159
    new-instance p1, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;

    iget-object p4, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p1, p4, p3}, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V

    .line 160
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRSRecordActivity$GetQAData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 162
    :cond_1
    new-instance p1, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;

    iget-object p4, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    invoke-direct {p1, p4, p3}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;-><init>(Ltw/edu/kmu/act/IRSRecordActivity;Ltw/edu/kmu/act/IRSRecordActivity$1;)V

    .line 163
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/IRSRecordActivity$GetAskData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    .line 152
    :cond_2
    :goto_1
    iget-object p1, p0, Ltw/edu/kmu/act/IRSRecordActivity$1;->this$0:Ltw/edu/kmu/act/IRSRecordActivity;

    const-string p3, "\u8ab2\u7a0b\u4e0d\u80fd\u7a7a\u767d"

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p3, 0x11

    .line 153
    invoke-virtual {p1, p3, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 154
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
