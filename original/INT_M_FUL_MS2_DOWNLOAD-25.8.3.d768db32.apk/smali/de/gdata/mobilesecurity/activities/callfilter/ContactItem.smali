.class public Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ALLOW_BLOCK_CALL:I

.field public static ALLOW_BLOCK_SMS:I

.field public static ALLOW_DEBLOCK_CALL:I

.field public static ALLOW_DEBLOCK_SMS:I

.field public static ALLOW_REQUEST:I

.field public static STAT_NORMAL:I

.field public static STAT_REQUEST_SENT:I


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    sput v1, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_BLOCK_CALL:I

    .line 14
    const/4 v0, 0x2

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_DEBLOCK_CALL:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_BLOCK_SMS:I

    .line 18
    const/16 v0, 0x8

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_DEBLOCK_SMS:I

    .line 20
    const/16 v0, 0x10

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->ALLOW_REQUEST:I

    .line 44
    const/4 v0, 0x0

    sput v0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_NORMAL:I

    .line 45
    sput v1, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->STAT_REQUEST_SENT:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIJILandroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->a:J

    .line 60
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->b:Ljava/lang/String;

    .line 61
    iput p4, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->c:I

    .line 62
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->d:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->e:Ljava/lang/String;

    .line 64
    iput p7, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->f:I

    .line 65
    iput-wide p9, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->g:J

    .line 66
    iput p8, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->j:I

    .line 67
    iput p11, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->h:I

    .line 68
    iput-object p12, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->i:Landroid/graphics/Bitmap;

    .line 69
    return-void
.end method


# virtual methods
.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->h:I

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIdentifier()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->a:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->c:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->f:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->j:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->g:J

    return-wide v0
.end method

.method public setDisplayNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->d:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->h:I

    .line 197
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->i:Landroid/graphics/Bitmap;

    .line 211
    return-void
.end method

.method public setIdentifier(J)V
    .locals 1

    .prologue
    .line 82
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->a:J

    .line 83
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->b:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPermissions(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->c:I

    .line 111
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->e:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setSource(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->f:I

    .line 153
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->j:I

    .line 169
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 182
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/ContactItem;->g:J

    .line 183
    return-void
.end method
