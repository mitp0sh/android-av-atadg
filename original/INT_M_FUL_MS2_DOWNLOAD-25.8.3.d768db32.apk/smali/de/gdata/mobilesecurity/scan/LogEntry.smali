.class public Lde/gdata/mobilesecurity/scan/LogEntry;
.super Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lde/gdata/mobilesecurity/scan/LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOMNOTIFICATIONID:Ljava/lang/String; = "customNotificationId"

.field public static final ENTRY_APPLOCK_DEACTIVATED:I = 0x30

.field public static final ENTRY_APP_BLOCKED:I = 0x14

.field public static final ENTRY_APP_CHECKER_DEACTIVATED:I = 0x31

.field public static final ENTRY_APP_LOCKED:I = 0x13

.field public static final ENTRY_CALL_HIDDEN:I = 0x18

.field public static final ENTRY_COMMAND_LOCATE:I = 0x22

.field public static final ENTRY_COMMAND_LOCK_FAIL:I = 0x26

.field public static final ENTRY_COMMAND_LOCK_NO_PASSWORD:I = 0x25

.field public static final ENTRY_COMMAND_LOCK_OK:I = 0x23

.field public static final ENTRY_COMMAND_LOCK_PASSWORD_RESET:I = 0x24

.field public static final ENTRY_COMMAND_SET_PASSWORD_FAIL:I = 0x28

.field public static final ENTRY_COMMAND_SET_PASSWORD_OK:I = 0x27

.field public static final ENTRY_GCM_ERROR:I = 0x21

.field public static final ENTRY_HASHCODE_BLOCK_APP:I = 0x1a

.field public static final ENTRY_HASHCODE_MISMATCH:I = 0x19

.field public static final ENTRY_INCOMING_CALL_BLOCKED:I = 0x12

.field public static final ENTRY_MMS_HOST_NOT_FOUND:I = 0x2f

.field public static final ENTRY_MMS_LOG:I = 0x29

.field public static final ENTRY_MSG_APPSCAN_SCANRESULT_CLEAN:I = 0x1

.field public static final ENTRY_MSG_APPSCAN_SCANRESULT_INFECTION:I = 0x2

.field public static final ENTRY_MSG_CANCELLED:I = -0x1

.field public static final ENTRY_MSG_DEVICE_LOCATING:I = 0x16

.field public static final ENTRY_MSG_FILESCAN_CLEAN:I = 0x5

.field public static final ENTRY_MSG_FILESCAN_INFECTED:I = 0x6

.field public static final ENTRY_MSG_INSTALL_CLEAN:I = 0x3

.field public static final ENTRY_MSG_MMS_AUTHORIZATION_FAILED:I = 0xf

.field public static final ENTRY_MSG_NEWS_AVAILABLE:I = 0x1d

.field public static final ENTRY_MSG_ONINSTALL_INFECTED:I = 0xc

.field public static final ENTRY_MSG_SCANJOB_RESULT:I = 0xb

.field public static final ENTRY_MSG_SCAN_OUTDATED:I = 0x1c

.field public static final ENTRY_MSG_SIGS_OUTDATED:I = 0x1b

.field public static final ENTRY_MSG_SIGUPDATE:I = 0x4

.field public static final ENTRY_MSG_SIM_CHANGED:I = 0x15

.field public static final ENTRY_MSG_UNDEFINED:I = 0x0

.field public static final ENTRY_MSG_UPDATE_ERR_COMPUTERID_CHANGED:I = 0x8

.field public static final ENTRY_MSG_UPDATE_ERR_DATA_CORRUPT:I = 0xe

.field public static final ENTRY_MSG_UPDATE_ERR_INSTALL_SIGNATURE_UPDATE:I = 0x10

.field public static final ENTRY_MSG_UPDATE_ERR_INVALID_LOGIN:I = 0xa

.field public static final ENTRY_MSG_UPDATE_ERR_LICENSE_FAULT:I = 0x9

.field public static final ENTRY_MSG_UPDATE_ERR_LOGIN_EXPIRED:I = 0x7

.field public static final ENTRY_OUTGOING_CALL_BLOCKED:I = 0x11

.field public static final ENTRY_PHISHING_SITE_DETECTED:I = 0xd

.field public static final ENTRY_ROOTED_DEVICE:I = 0x20

.field public static final ENTRY_SET_CAMERA_STATE:I = 0x2a

.field public static final ENTRY_SMS_HIDDEN:I = 0x17

.field public static final ENTRY_STORAGE_ENCRYPTION_FAIL:I = 0x1e

.field public static final ENTRY_STORAGE_ENCRYPTION_SUCCESS:I = 0x1f

.field public static final ENTRY_SUBSCRIPTION_CANCELED:I = 0x2c

.field public static final ENTRY_SUBSCRIPTION_ERROR:I = 0x2d

.field public static final ENTRY_SUBSCRIPTION_NETWORK_ERROR:I = 0x2e

.field public static final ENTRY_SUBSCRIPTION_STARTED:I = 0x2b

.field public static final EXTRA_LOG_ENTRY:Ljava/lang/String; = "log"

.field public static final EXTRA_ONINSTALL_APP:I = 0x1

.field public static final EXTRA_ONINSTALL_MALWARE_NAME:I = 0x2

.field public static final EXTRA_ONINSTALL_MALWARE_OR_PUP:I = 0x0

.field public static final EXTRA_PACKAGE_NAME:I = 0x3

.field public static final EXTRA_SCANJOB_DETAILS:I = 0x6

.field public static final EXTRA_SCANJOB_DURATION:I = 0x5

.field public static final EXTRA_SCANJOB_INFECTION_CNT:I = 0x3

.field public static final EXTRA_SCANJOB_POTENTIALLY_UNWANTED_CNT:I = 0x4

.field public static final EXTRA_SCANJOB_SCANNED_APPS:I = 0x1

.field public static final EXTRA_SCANJOB_SCANNED_FILES:I = 0x2

.field public static final EXTRA_SCANJOB_SIG_DATE:I = 0x7

.field public static final EXTRA_SCANJOB_SIZE:I = 0x8

.field public static final EXTRA_SCANJOB_TYPE:I = 0x0

.field public static final EXTRA_VERSION_NAME:I = 0x4

.field public static final SHOWSCANOUTDATEDDIALOG:Ljava/lang/String; = "showScanOutdatedDialog"

.field public static final SHOWSIGSOUTDATEDDIALOG:Ljava/lang/String; = "showSigsOutdatedDialog"

.field public static final SHOWSUBSCRIPTIONSTARTEDDIALOG:Ljava/lang/String; = "showSubscriptionStartedDialog"

.field public static final STATUS_FROM_TEENAGER:I = 0x10

.field public static final STATUS_FROM_TODDLER:I = 0x8

.field public static final STATUS_HIDDEN:I = 0x1

.field public static final STATUS_HIDDEN_SENT:I = 0x3

.field public static final STATUS_NEW:I = 0x0

.field public static final STATUS_SENDING:I = 0x4

.field public static final STATUS_SENT:I = 0x2

.field public static final SWITCHMENUITEM:Ljava/lang/String; = "switchMenuItem"


# instance fields
.field private a:J

.field private b:Ljava/util/Date;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lde/gdata/mobilesecurity/scan/a;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/scan/a;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/scan/LogEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;-><init>(I)V

    .line 112
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    .line 113
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    .line 117
    iput v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    .line 126
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 544
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;-><init>(I)V

    .line 112
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    .line 113
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    .line 117
    iput v2, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    .line 545
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    .line 552
    return-void

    :cond_0
    move v0, v2

    .line 546
    goto :goto_0

    :cond_1
    move v1, v2

    .line 547
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/gdata/mobilesecurity/scan/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/logs/ExpandableListItem;-><init>(I)V

    .line 112
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    .line 113
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    .line 117
    iput v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    .line 131
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    return-object v0
.end method

.method public getExpandedLayoutId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->j:I

    return v0
.end method

.method public getImage()I
    .locals 2

    .prologue
    const v0, 0x7f02006a

    .line 555
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const v0, 0x7f02013b

    .line 569
    :goto_0
    :pswitch_0
    return v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getWarning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    const v0, 0x7f0201af

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 569
    const v0, 0x7f020160

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getInfected()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    return v0
.end method

.method public getMessage(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x3

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    .line 512
    :goto_0
    return-object v0

    .line 222
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :pswitch_0
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const v0, 0x7f0d0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 233
    array-length v6, v5

    move v2, v1

    move v0, v3

    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v3, v5, v2

    .line 234
    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const v0, 0x7f0d0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 233
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 240
    :cond_2
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const v7, 0x7f0d0006

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 250
    :pswitch_3
    const v0, 0x7f0d03b1

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const v0, 0x7f0d03b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 259
    :pswitch_4
    const v0, 0x7f0d0352

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const v0, 0x7f0d029d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 268
    :pswitch_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    array-length v1, v0

    if-le v1, v3, :cond_1

    .line 271
    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const v1, 0x7f0d0266

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const v1, 0x7f0d026c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const v0, 0x7f0d026d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 283
    :pswitch_6
    const v0, 0x7f0d022e

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->getStringAppNameReplaced(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 287
    :pswitch_7
    const v0, 0x7f0d0224

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 291
    :pswitch_8
    const v0, 0x7f0d022b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 295
    :pswitch_9
    const v0, 0x7f0d0229

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 299
    :pswitch_a
    const v0, 0x7f0d0225

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 303
    :pswitch_b
    const v0, 0x7f0d0227

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 307
    :pswitch_c
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    array-length v0, v2

    const/4 v5, 0x7

    if-lt v0, v5, :cond_1

    .line 309
    aget-object v0, v2, v1

    const-string v1, "A"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0d0345

    :goto_4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 313
    const v0, 0x7f0d034b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_5
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    if-eqz p2, :cond_3

    .line 320
    const v0, 0x7f0d0346

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%cnt%"

    aget-object v3, v2, v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_3
    if-eqz p2, :cond_4

    aget-object v0, v2, v8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v2, v8

    const-string v1, "0"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 326
    const v0, 0x7f0d0348

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%cnt%"

    aget-object v3, v2, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_4
    aget-object v0, v2, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v2, v6

    const-string v1, "0"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 332
    aget-object v0, v2, v6

    const-string v1, "1"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0d0349

    :goto_6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%cnt%"

    aget-object v3, v2, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_5
    aget-object v0, v2, v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v2, v7

    const-string v1, "0"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 341
    aget-object v0, v2, v7

    const-string v1, "1"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f0d034d

    :goto_7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%cnt%"

    aget-object v3, v2, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_6
    if-eqz p2, :cond_7

    array-length v0, v2

    const/4 v1, 0x7

    if-le v0, v1, :cond_7

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 351
    const/4 v0, 0x7

    :try_start_0
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 352
    const v1, 0x7f0d0350

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%date%"

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 358
    :cond_7
    :goto_8
    if-eqz p2, :cond_8

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 360
    const/4 v0, 0x5

    :try_start_1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 361
    const v1, 0x7f0d0347

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%time%"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    :cond_8
    :goto_9
    if-eqz p2, :cond_1

    array-length v0, v2

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 309
    :cond_9
    const v0, 0x7f0d0351

    goto/16 :goto_4

    .line 314
    :cond_a
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getWarning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 315
    const v0, 0x7f0d034e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 317
    :cond_b
    const v0, 0x7f0d034c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 332
    :cond_c
    const v0, 0x7f0d034a

    goto/16 :goto_6

    .line 341
    :cond_d
    const v0, 0x7f0d034f

    goto/16 :goto_7

    .line 375
    :pswitch_d
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 376
    array-length v0, v5

    if-lt v0, v6, :cond_1

    .line 378
    array-length v0, v5

    if-gt v0, v7, :cond_e

    const-string v0, ""

    .line 380
    :goto_a
    array-length v2, v5

    if-gt v2, v6, :cond_f

    const-string v2, ""

    .line 383
    :goto_b
    aget-object v1, v5, v1

    const-string v6, "M"

    invoke-static {v1, v6}, Lde/gdata/mobilesecurity/util/MyUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f0d033f

    :goto_c
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const v1, 0x7f0d033e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "%app%"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v5, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const v0, 0x7f0d0340

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%name%"

    aget-object v3, v5, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    const v0, 0x7f0d0341

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%package%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 378
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, v5, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 380
    :cond_f
    aget-object v2, v5, v6

    goto/16 :goto_b

    .line 383
    :cond_10
    const v1, 0x7f0d0342

    goto/16 :goto_c

    .line 399
    :pswitch_e
    const v0, 0x7f0d0344

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 404
    :pswitch_f
    const v0, 0x7f0d0398

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 408
    :pswitch_10
    const v0, 0x7f0d0392

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 412
    :pswitch_11
    const v0, 0x7f0d0343

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 418
    :pswitch_12
    const v0, 0x7f0d033c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 421
    const v0, 0x7f0d01b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    .line 423
    :cond_11
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 427
    :pswitch_13
    const v0, 0x7f0d033d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 433
    :pswitch_14
    const v0, 0x7f0d0334

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 439
    :pswitch_15
    const v0, 0x7f0d033b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 445
    :pswitch_16
    const v0, 0x7f0d033a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 451
    :pswitch_17
    const v0, 0x7f0d047a

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 455
    :pswitch_18
    const v0, 0x7f0d047b

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 466
    :pswitch_19
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 471
    :pswitch_1a
    const v0, 0x7f0d04ab

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 475
    :pswitch_1b
    const v0, 0x7f0d04b1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 478
    :pswitch_1c
    const v0, 0x7f0d04b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 481
    :pswitch_1d
    const v0, 0x7f0d04ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 484
    :pswitch_1e
    const v0, 0x7f0d04af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 487
    :pswitch_1f
    const v0, 0x7f0d04ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 490
    :pswitch_20
    const v0, 0x7f0d04ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 493
    :pswitch_21
    const v0, 0x7f0d04aa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 498
    :pswitch_22
    const v0, 0x7f0d0393

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 503
    :pswitch_23
    const v0, 0x7f0d013e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 506
    :pswitch_24
    const v0, 0x7f0d013e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 364
    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 355
    :catch_1
    move-exception v0

    goto/16 :goto_8

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_1b
        :pswitch_1c
        :pswitch_22
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_f
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public getMessageExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    return v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    return v0
.end method

.method public getTableId()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->a:J

    return-wide v0
.end method

.method public getWarning()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    return v0
.end method

.method public onClick(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/logs/ExpandingListView;Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, 0x4000000

    .line 573
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    sparse-switch v0, :sswitch_data_0

    .line 593
    :goto_0
    return-void

    .line 575
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 576
    const-string v1, "switchMenuItem"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    const-string v1, "de.gdata.mobilesecurity.intents.Main"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 584
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 585
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    const-string v1, "de.gdata.mobilesecurity.intents.AccountManagementIPXPre"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
    .end sparse-switch
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    .line 147
    return-void
.end method

.method public setExpandedLayoutId()V
    .locals 2

    .prologue
    const v1, 0x7f030070

    .line 206
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    packed-switch v0, :pswitch_data_0

    .line 214
    const v0, 0x7f03006f

    iput v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->j:I

    .line 217
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iput v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->j:I

    goto :goto_0

    .line 211
    :pswitch_1
    iput v1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->j:I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInfected()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    .line 155
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->e:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setMessageExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setMessageID(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    .line 163
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    .line 191
    return-void
.end method

.method public setTableId(J)V
    .locals 1

    .prologue
    .line 138
    iput-wide p1, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->a:J

    .line 139
    return-void
.end method

.method public setWarning()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    .line 151
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->b:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 523
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->d:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/LogEntry;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    return-void

    :cond_0
    move v0, v2

    .line 523
    goto :goto_0

    :cond_1
    move v1, v2

    .line 524
    goto :goto_1
.end method
