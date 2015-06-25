.class Lde/gdata/mobilesecurity/activities/kidsguard/ak;
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
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

.field private b:Z


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/aj;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->b:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionEmail()Ljava/lang/String;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 323
    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v3, v3, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d011b

    invoke-static {v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 324
    iget-object v4, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v4, v4, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    const v5, 0x7f0d02d2

    invoke-virtual {v4, v5}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#code#"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-static {v0, v2, v3, v1}, Lde/gdata/mobilesecurity/util/EmailClient;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->b:Z

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 333
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->g(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 335
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v0, v0, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v1, v1, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a:Lde/gdata/mobilesecurity/activities/kidsguard/aj;

    iget-object v2, v2, Lde/gdata/mobilesecurity/activities/kidsguard/aj;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0119

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 340
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 342
    iget-boolean v2, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->b:Z

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 313
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 313
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/kidsguard/ak;->a(Ljava/lang/Void;)V

    return-void
.end method
