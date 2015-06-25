.class public Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment$SettingsTextWatcher;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    .line 727
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 722
    return-void
.end method
