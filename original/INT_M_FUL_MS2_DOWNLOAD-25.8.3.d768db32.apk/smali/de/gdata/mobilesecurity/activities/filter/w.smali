.class Lde/gdata/mobilesecurity/activities/filter/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Lde/gdata/mobilesecurity/activities/filter/o;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/w;-><init>(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    .line 173
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 190
    :goto_0
    if-eqz v1, :cond_1

    .line 191
    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->b(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->c(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 202
    :cond_0
    :goto_1
    return-void

    :pswitch_0
    move-object v1, v0

    .line 176
    goto :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 179
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/w;->a:Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;->a(Lde/gdata/mobilesecurity/activities/filter/LocationPickerFragment;)V

    move-object v1, v0

    .line 185
    goto :goto_0

    .line 199
    :cond_1
    const-string v0, "ADDRESS"

    const-string v1, "Failed to get."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
