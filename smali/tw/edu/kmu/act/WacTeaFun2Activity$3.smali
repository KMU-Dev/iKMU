.class Ltw/edu/kmu/act/WacTeaFun2Activity$3;
.super Ljava/lang/Object;
.source "WacTeaFun2Activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun2Activity;->showTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun2Activity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 112
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iput-object p2, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->val$queryDialog:Landroid/app/AlertDialog;

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

    .line 119
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$202(Ltw/edu/kmu/act/WacTeaFun2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 121
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object p1, p1, Ltw/edu/kmu/act/WacTeaFun2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 122
    new-instance p1, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;

    iget-object p2, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$3;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;Ltw/edu/kmu/act/WacTeaFun2Activity$1;)V

    const/4 p2, 0x0

    .line 123
    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
