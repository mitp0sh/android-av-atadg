.class public Lde/gdata/mobilesecurity/activities/filter/FilterGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final A_EMPTY_WEEK:Ljava/lang/String; = "0000000"

.field public static final A_FULL_DAY_IN_MS:J = 0x5265c00L

.field public static final A_FULL_WEEK:Ljava/lang/String; = "1111111"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final INSERT_INTO_FILTER_GROUP_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO filtergroup (name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

.field public static final INSERT_INTO_FILTER_LIST_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO filterlist (name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?)"

.field public static final UPDATE_FILTER_GROUP_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO filtergroup (id, name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

.field public static final UPDATE__FILTER_LIST_TABLE:Ljava/lang/String; = "INSERT OR REPLACE INTO filterlist (id ,name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lde/gdata/mobilesecurity/activities/filter/LocationBean;

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lde/gdata/mobilesecurity/activities/filter/e;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/filter/e;-><init>()V

    sput-object v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 38
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 40
    const-string v0, "0000000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 41
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 42
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    .line 43
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    .line 44
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    .line 45
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 702
    iput v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    .line 712
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 714
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->q:Z

    .line 71
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 72
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->d:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 75
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 76
    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 77
    iput-boolean p7, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 78
    iput-boolean p8, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 37
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 38
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 40
    const-string v0, "0000000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 42
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    .line 43
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    .line 44
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    .line 45
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 702
    iput v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    .line 712
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 714
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->q:Z

    .line 442
    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/String;

    .line 443
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 445
    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 446
    aget-object v0, v3, v1

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 447
    const/4 v0, 0x2

    aget-object v0, v3, v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->d:Ljava/lang/String;

    .line 448
    const/4 v0, 0x3

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 449
    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 450
    const/4 v0, 0x5

    aget-object v0, v3, v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 451
    const/4 v0, 0x6

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 452
    const/4 v0, 0x7

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    .line 453
    const/16 v0, 0x8

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    .line 454
    const/16 v0, 0x9

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    .line 455
    const/16 v0, 0xa

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 456
    const/16 v0, 0xb

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    .line 457
    const/16 v0, 0xc

    aget-object v0, v3, v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    .line 458
    const/16 v0, 0xd

    aget-object v0, v3, v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 461
    return-void

    :cond_0
    move v0, v2

    .line 451
    goto :goto_0

    :cond_1
    move v0, v2

    .line 452
    goto :goto_1

    :cond_2
    move v0, v2

    .line 453
    goto :goto_2

    :cond_3
    move v0, v2

    .line 454
    goto :goto_3

    :cond_4
    move v0, v2

    .line 455
    goto :goto_4

    :cond_5
    move v0, v2

    .line 457
    goto :goto_5

    :cond_6
    move v1, v2

    .line 458
    goto :goto_6
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 38
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 40
    const-string v0, "0000000"

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 41
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 42
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    .line 43
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    .line 44
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    .line 45
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 702
    iput v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    .line 712
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 714
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->q:Z

    .line 51
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->d:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 54
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 55
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 56
    iput-boolean p6, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 57
    iput-boolean p7, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 237
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadFilterGroupById(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;
    .locals 28

    .prologue
    .line 604
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM filtergroup WHERE id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    const-string v3, "loadFilterGroups"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 610
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 612
    if-eqz v12, :cond_8

    .line 614
    const-string v2, "id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 615
    const-string v2, "name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 616
    const-string v2, "configuration"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 617
    const-string v2, "starttime"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 618
    const-string v2, "endtime"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 619
    const-string v2, "schedule"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 620
    const-string v2, "activated"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 621
    const-string v2, "incoming"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 622
    const-string v2, "outgoing"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 623
    const-string v2, "sms"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 624
    const-string v2, "blacklist"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 625
    const-string v2, "anonymus"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 626
    const-string v2, "telephone"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 627
    const-string v2, "location"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 629
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 631
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-direct/range {v2 .. v10}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 635
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 636
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 637
    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 638
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 639
    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 640
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocationId(I)V

    .line 641
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 642
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 631
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 635
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 636
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 637
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 638
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 639
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 644
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 645
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;-><init>()V

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 646
    const-string v2, "loadFilterGroups"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 648
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    :goto_8
    return-object v2

    :cond_9
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public static loadFilterGroups(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v2, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v2

    .line 554
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM filtergroup WHERE configuration LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONFIGURATION "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 561
    const-string v2, "loadFilterGroups"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 562
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 564
    if-eqz v12, :cond_8

    .line 566
    const-string v2, "id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 567
    const-string v2, "name"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 568
    const-string v2, "configuration"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 569
    const-string v2, "starttime"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 570
    const-string v2, "endtime"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 571
    const-string v2, "schedule"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 572
    const-string v2, "activated"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 573
    const-string v2, "incoming"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 574
    const-string v2, "outgoing"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 575
    const-string v2, "sms"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 576
    const-string v2, "blacklist"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 577
    const-string v2, "anonymus"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 578
    const-string v2, "telephone"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 579
    const-string v2, "location"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 581
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 583
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_1
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_1

    const/4 v10, 0x1

    :goto_2
    invoke-direct/range {v2 .. v10}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZ)V

    .line 587
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsIncoming(Z)V

    .line 588
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsOutgoing(Z)V

    .line 589
    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIsSms(Z)V

    .line 590
    move/from16 v0, v24

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setAllowAnonymousCalls(Z)V

    .line 591
    move/from16 v0, v25

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setIncludesTB(Z)V

    .line 592
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setLocationId(I)V

    .line 593
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 594
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 583
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 587
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 588
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 589
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 590
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 591
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 596
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 597
    new-instance v2, Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;

    invoke-direct {v2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup$FilterComparator;-><init>()V

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    const-string v2, "loadFilterGroups"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 600
    :cond_8
    return-object v11
.end method


# virtual methods
.method public changeSchedulePosition(IZ)V
    .locals 2

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    if-eqz p2, :cond_0

    const/16 v0, 0x31

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 212
    return-void

    .line 210
    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    if-eqz p1, :cond_0

    instance-of v1, p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    if-eqz v1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    iget v2, p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    :cond_0
    return v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncludesTB()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    return v0
.end method

.method public getIsActivated()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    return v0
.end method

.method public getIsBlacklist()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    return v0
.end method

.method public getIsIncoming()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    return v0
.end method

.method public getIsOutgoing()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    return v0
.end method

.method public getIsSms()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    return v0
.end method

.method public getLocation(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/LocationBean;
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/activities/filter/LocationBean;->loadLocationById(Landroid/content/Context;I)Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    move-result-object v0

    return-object v0
.end method

.method public getLocationId()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshedContacts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSchedule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringDate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringEndTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 125
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 128
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringStartTime()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    .line 96
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v6

    div-long/2addr v0, v6

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    div-long/2addr v2, v8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 99
    invoke-direct {p0, v0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveASameDate(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 525
    move v1, v0

    .line 526
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 527
    invoke-virtual {p1, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveToday(I)Z

    move-result v2

    .line 528
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveToday(I)Z

    move-result v3

    .line 529
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 530
    const/4 v0, 0x1

    .line 526
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    return v0
.end method

.method public haveCollidingTime(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 538
    const/4 v1, 0x1

    .line 540
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 547
    return v0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public insertContactsIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;)V
    .locals 4

    .prologue
    .line 373
    const-string v0, "insertContactsIntoDB"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 376
    if-eqz p2, :cond_0

    .line 377
    :try_start_0
    const-string v1, "INSERT OR REPLACE INTO filterlist (name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 379
    const/4 v1, 0x1

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 380
    const/4 v1, 0x2

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 381
    const/4 v1, 0x3

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 382
    const/4 v1, 0x4

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getMessageType()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 383
    const/4 v1, 0x5

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getPermissions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 384
    const/4 v1, 0x6

    invoke-virtual {p2}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getStatus()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 385
    const/4 v1, 0x7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 387
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 388
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    const-string v0, "insertContactsIntoDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 398
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO filterlist (name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public insertIntoDB(Landroid/content/Context;)V
    .locals 10

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    .line 297
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 298
    const-string v4, "insertIntoDB"

    invoke-static {p1, v4}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 301
    :try_start_0
    const-string v5, "INSERT OR REPLACE INTO filtergroup (name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 302
    const/4 v4, 0x1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 303
    const/4 v4, 0x2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 304
    const/4 v4, 0x3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 305
    const/4 v4, 0x4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 306
    const/4 v4, 0x5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getSchedule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 307
    const/4 v7, 0x6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v4, v0

    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 308
    const/4 v7, 0x7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v0

    :goto_1
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 309
    const/16 v7, 0x8

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide v4, v0

    :goto_2
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 310
    const/16 v7, 0x9

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v4

    if-eqz v4, :cond_4

    move-wide v4, v0

    :goto_3
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 311
    const/16 v7, 0xa

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v4, v0

    :goto_4
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 312
    const/16 v7, 0xb

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v4

    if-eqz v4, :cond_6

    move-wide v4, v0

    :goto_5
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 313
    const/16 v4, 0xc

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocationId()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 314
    const/16 v4, 0xd

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_6
    invoke-virtual {v6, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 316
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 317
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 318
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateContactsInDB(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_7
    const-string v0, "insertIntoDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void

    :cond_1
    move-wide v4, v2

    .line 307
    goto :goto_0

    :cond_2
    move-wide v4, v2

    .line 308
    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 309
    goto :goto_2

    :cond_4
    move-wide v4, v2

    .line 310
    goto :goto_3

    :cond_5
    move-wide v4, v2

    .line 311
    goto :goto_4

    :cond_6
    move-wide v4, v2

    .line 312
    goto :goto_5

    :cond_7
    move-wide v0, v2

    .line 314
    goto :goto_6

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO filtergroup (name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveByTimeRightNow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lde/gdata/mobilesecurity/util/MyUtil;->getCurrentDay()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isActiveToday(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActiveByTimeRightNow()Z
    .locals 6

    .prologue
    .line 224
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActiveToday(I)Z
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :cond_0
    return v0
.end method

.method public isAllowAnonymousCalls()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    return v0
.end method

.method public isColliding(Landroid/content/Context;)Lde/gdata/mobilesecurity/activities/filter/FilterGroup;
    .locals 5

    .prologue
    .line 502
    const/4 v1, 0x0

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 504
    invoke-static {p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->loadFilterGroups(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;

    .line 507
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v3

    iget v4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    if-eq v3, v4, :cond_5

    .line 508
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 509
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v3

    if-nez v3, :cond_5

    .line 511
    :cond_1
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 512
    :cond_3
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->haveASameDate(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 513
    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->haveCollidingTime(Lde/gdata/mobilesecurity/activities/filter/FilterGroup;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move-object v1, v0

    .line 520
    goto :goto_0

    .line 521
    :cond_4
    return-object v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->q:Z

    return v0
.end method

.method public isEveryday()Z
    .locals 3

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    const-string v2, "1111111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :cond_0
    return v0
.end method

.method public isFullDay()Z
    .locals 6

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    return v0
.end method

.method public loadContactsFromDB(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    .line 404
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM filterlist WHERE groupid LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    const-string v2, "loadContactsFromDB"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 411
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 412
    if-eqz v11, :cond_1

    .line 414
    const-string v1, "id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 415
    const-string v1, "name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 416
    const-string v1, "displaynumber"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 417
    const-string v1, "phonenumber"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 418
    const-string v1, "messagetypes"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 419
    const-string v1, "permissions"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 420
    const-string v1, "status"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 421
    const-string v1, "activated"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 422
    const-string v1, "groupid"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 424
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    new-instance v1, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 429
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 433
    const-string v1, "loadContactsFromDB"

    invoke-static {v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 435
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->setContacts(Ljava/util/ArrayList;)V

    .line 436
    return-object v10
.end method

.method public setActivated(Z)V
    .locals 0

    .prologue
    .line 677
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    .line 678
    return-void
.end method

.method public setAllowAnonymousCalls(Z)V
    .locals 0

    .prologue
    .line 709
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    .line 710
    return-void
.end method

.method public setContacts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->m:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public setDeleted()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->q:Z

    .line 682
    return-void
.end method

.method public setFromTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    .line 201
    return-void
.end method

.method public setIncludesTB(Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    .line 232
    return-void
.end method

.method public setIsBlacklist(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    .line 67
    return-void
.end method

.method public setIsIncoming(Z)V
    .locals 0

    .prologue
    .line 721
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    .line 722
    return-void
.end method

.method public setIsOutgoing(Z)V
    .locals 0

    .prologue
    .line 729
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    .line 730
    return-void
.end method

.method public setIsSms(Z)V
    .locals 0

    .prologue
    .line 737
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    .line 738
    return-void
.end method

.method public setLocation(Lde/gdata/mobilesecurity/activities/filter/LocationBean;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->n:Lde/gdata/mobilesecurity/activities/filter/LocationBean;

    .line 690
    return-void
.end method

.method public setLocationId(I)V
    .locals 0

    .prologue
    .line 699
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    .line 700
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSchedule(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setTillTime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    .line 205
    return-void
.end method

.method public updateContactsInDB(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 338
    const-string v0, "updateContactsInDB"

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 339
    const-string v0, "filterlist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "groupid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    .line 343
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getId()I

    move-result v3

    if-lez v3, :cond_1

    .line 345
    const-string v3, "INSERT OR REPLACE INTO filterlist (id ,name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 347
    const/4 v4, 0x1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 348
    const/4 v4, 0x2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 349
    const/4 v4, 0x3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getDisplayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 350
    const/4 v4, 0x4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 351
    const/4 v4, 0x5

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getMessageType()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 352
    const/4 v4, 0x6

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getPermissions()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 353
    const/4 v4, 0x7

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->getStatus()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 354
    const/16 v0, 0x8

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 356
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 357
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO filterlist (id ,name, displaynumber, phonenumber, messagetypes, permissions, status, groupid) VALUES (?, ?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    :cond_0
    const-string v0, "updateContactsInDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 369
    return-void

    .line 359
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->insertContactsIntoDB(Landroid/content/Context;Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateInDB(Landroid/content/Context;)I
    .locals 10

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v4

    if-ltz v4, :cond_8

    .line 255
    const-string v4, "updateIntoDB"

    invoke-static {p1, v4}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 257
    :try_start_0
    const-string v5, "INSERT OR REPLACE INTO filtergroup (id, name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 258
    const/4 v4, 0x1

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getId()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 259
    const/4 v4, 0x2

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 260
    const/4 v4, 0x3

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getConfig()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 261
    const/4 v4, 0x4

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getStartTime()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 262
    const/4 v4, 0x5

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getEndTime()J

    move-result-wide v8

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 263
    const/4 v4, 0x6

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getSchedule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 264
    const/4 v7, 0x7

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsActivated()Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v4, v0

    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 265
    const/16 v7, 0x8

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsIncoming()Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v0

    :goto_1
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 266
    const/16 v7, 0x9

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsOutgoing()Z

    move-result v4

    if-eqz v4, :cond_3

    move-wide v4, v0

    :goto_2
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 267
    const/16 v7, 0xa

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsSms()Z

    move-result v4

    if-eqz v4, :cond_4

    move-wide v4, v0

    :goto_3
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 268
    const/16 v7, 0xb

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIsBlacklist()Z

    move-result v4

    if-eqz v4, :cond_5

    move-wide v4, v0

    :goto_4
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 269
    const/16 v7, 0xc

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getIncludesTB()Z

    move-result v4

    if-eqz v4, :cond_6

    move-wide v4, v0

    :goto_5
    invoke-virtual {v6, v7, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 270
    const/16 v4, 0xd

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->getLocationId()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v6, v4, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 271
    const/16 v4, 0xe

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->isAllowAnonymousCalls()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_6
    invoke-virtual {v6, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 273
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    .line 274
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 275
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->updateContactsInDB(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_7
    const-string v0, "updateIntoDB"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_8
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    return v0

    :cond_1
    move-wide v4, v2

    .line 264
    goto :goto_0

    :cond_2
    move-wide v4, v2

    .line 265
    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 266
    goto :goto_2

    :cond_4
    move-wide v4, v2

    .line 267
    goto :goto_3

    :cond_5
    move-wide v4, v2

    .line 268
    goto :goto_4

    :cond_6
    move-wide v4, v2

    .line 269
    goto :goto_5

    :cond_7
    move-wide v0, v2

    .line 271
    goto :goto_6

    .line 277
    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement INSERT OR REPLACE INTO filtergroup (id, name, configuration, starttime, endtime, schedule, activated, incoming, outgoing, sms, blacklist, telephone, location, anonymus) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) caused an exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 283
    :cond_8
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->insertIntoDB(Landroid/content/Context;)V

    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 481
    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->d:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->e:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->f:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->g:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x6

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v1, v2

    const/4 v2, 0x7

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    aput-object v0, v1, v2

    const/16 v2, 0x8

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    aput-object v0, v1, v2

    const/16 v2, 0x9

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->l:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    aput-object v0, v1, v2

    const/16 v2, 0xa

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->p:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    aput-object v0, v1, v2

    const/16 v0, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v2, 0xc

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->i:Z

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_5
    aput-object v0, v1, v2

    const/16 v2, 0xd

    iget-boolean v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroup;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 485
    return-void

    .line 481
    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    const-string v0, "0"

    goto :goto_2

    :cond_3
    const-string v0, "0"

    goto :goto_3

    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    const-string v0, "0"

    goto :goto_5

    :cond_6
    const-string v0, "0"

    goto :goto_6
.end method
