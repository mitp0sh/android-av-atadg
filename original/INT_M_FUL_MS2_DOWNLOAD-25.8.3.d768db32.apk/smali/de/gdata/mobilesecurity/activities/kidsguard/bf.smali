.class Lde/gdata/mobilesecurity/activities/kidsguard/bf;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;Z)V
    .locals 1

    .prologue
    .line 959
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a:Z

    .line 960
    iput-boolean p2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a:Z

    .line 961
    if-nez p2, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a(I)I

    .line 962
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 990
    :cond_0
    :goto_0
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 992
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->publishProgress([Ljava/lang/Object;)V

    .line 993
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 995
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->b()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1019
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1021
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1023
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1025
    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1026
    sput-boolean v2, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->showDots:Z

    .line 1027
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->setDots()V

    .line 1028
    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1009
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    const v3, 0x7f0d016c

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...."

    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->setDots()V

    .line 1012
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 950
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 950
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 969
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 971
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d016e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 974
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->b:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardHome;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 978
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 980
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 981
    sput-boolean v3, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->showDots:Z

    .line 982
    invoke-static {}, Lde/gdata/mobilesecurity/activities/kidsguard/NumpadHelper;->setDots()V

    .line 983
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 950
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/bf;->a([Ljava/lang/String;)V

    return-void
.end method
