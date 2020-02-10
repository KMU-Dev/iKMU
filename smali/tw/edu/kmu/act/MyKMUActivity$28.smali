.class Ltw/edu/kmu/act/MyKMUActivity$28;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showTASwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field final synthetic val$classId:Ljava/lang/String;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$queryDialog:Landroid/app/AlertDialog;

.field final synthetic val$seqNo:Ljava/lang/String;

.field final synthetic val$teacherNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iput-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$classId:Ljava/lang/String;

    iput-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$teacherNo:Ljava/lang/String;

    iput-object p4, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$className:Ljava/lang/String;

    iput-object p5, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$seqNo:Ljava/lang/String;

    iput-object p6, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$queryDialog:Landroid/app/AlertDialog;

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

    if-nez p3, :cond_0

    .line 1144
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "classId"

    .line 1145
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$classId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "teacherNo"

    .line 1146
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$teacherNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "className"

    .line 1147
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$className:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "seqno"

    .line 1148
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$seqNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userID"

    .line 1149
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userType"

    .line 1150
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userName"

    .line 1151
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "classRoomList"

    .line 1152
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$900(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1153
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 1157
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "classId"

    .line 1158
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$classId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "teacherNo"

    .line 1159
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$teacherNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "className"

    .line 1160
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$className:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "seqno"

    .line 1161
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$seqNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userID"

    .line 1162
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userType"

    .line 1163
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userName"

    .line 1164
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    .line 1169
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-class p3, Ltw/edu/kmu/act/IRSTAReplyListActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "classId"

    .line 1170
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$classId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "teacherNo"

    .line 1171
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$teacherNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "className"

    .line 1172
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$className:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "seqno"

    .line 1173
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$seqNo:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userID"

    .line 1174
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userType"

    .line 1175
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "userName"

    .line 1176
    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p3}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p3

    iget-object p3, p3, Ltw/edu/kmu/act/MyApplication;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    iget-object p2, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p3, p2, :cond_3

    .line 1181
    new-instance p2, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;

    iget-object p3, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;-><init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V

    .line 1182
    new-array p1, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    iget-object p4, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$classId:Ljava/lang/String;

    aput-object p4, p1, p3

    invoke-virtual {p2, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetWebUrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1185
    :cond_3
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$28;->val$queryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
