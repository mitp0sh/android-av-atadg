.class public Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->a(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0b026f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->b(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->c(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;->d(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lde/gdata/mobilesecurity/activities/kidsguard/al;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment$PasswordEnteredListener;->a:Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/activities/kidsguard/al;-><init>(Lde/gdata/mobilesecurity/activities/kidsguard/KidsGuardFragment;Z)V

    .line 151
    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/kidsguard/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
