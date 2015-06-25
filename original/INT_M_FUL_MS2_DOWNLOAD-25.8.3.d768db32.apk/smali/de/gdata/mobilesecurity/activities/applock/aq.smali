.class Lde/gdata/mobilesecurity/activities/applock/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/applock/aq;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/applock/aq;->a:Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;->e(Lde/gdata/mobilesecurity/activities/applock/SettingsFragment;)V

    .line 650
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 645
    return-void
.end method
