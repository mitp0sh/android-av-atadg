.class final Lde/gdata/mobilesecurity/util/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1729
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/k;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1733
    const-wide/16 v0, 0x40

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1734
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1741
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/k;->a:Landroid/app/Activity;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1744
    if-nez v0, :cond_0

    .line 1745
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "action_mode_close_button"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1748
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/k;->a:Landroid/app/Activity;

    if-nez v2, :cond_4

    move-object v0, v1

    :goto_1
    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1751
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gt v2, v5, :cond_5

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 1754
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1755
    :cond_2
    return-void

    .line 1741
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/k;->a:Landroid/app/Activity;

    const v2, 0x7f0b0040

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1748
    :cond_4
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/k;->a:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1751
    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1729
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/util/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1729
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/util/k;->a(Ljava/lang/Void;)V

    return-void
.end method
