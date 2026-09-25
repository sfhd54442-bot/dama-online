import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://hnqpfvbsoyydbgzabbwj.supabase.co/rest/v1/'
const supabaseKey = 'sb_publishable_1w-PwCr2koogjhx5bdtFaA_io7DPOaF'

export const supabase = createClient(supabaseUrl, supabaseKey)
