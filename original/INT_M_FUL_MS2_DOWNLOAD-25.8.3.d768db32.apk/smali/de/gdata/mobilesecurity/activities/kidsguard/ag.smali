.class Lde/gdata/mobilesecurity/activities/kidsguard/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 272
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->f(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getParentsAppProtectionAnswer()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    .line 277
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0303

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 287
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d016d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 284
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/ag;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->e(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
